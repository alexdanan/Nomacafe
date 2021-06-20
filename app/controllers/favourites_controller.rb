class FavouritesController < ApplicationController

  def index
    #TO DO get all nomads (type))
    @user = current_user
    @nomads = @user.favourite_users
    @cafes = @user.favourite_cafes

  end


  def show


  end


  def new

  end

  def create
    @new_fav = Favourite.new(fav_params)
    @new_fav.user = current_user
    if @new_fav.save!
      if @new_fav.favouritable_type == "User"
        redirect_to nomad_community_path, notice: "Nomad has been added to your favourites!"
      else
        redirect_to cafe_path(@new_fav.favouritable_id), notice: "Cafe has been added to your favourites!"
      end
    end



  end

  def destroy
    @fav = Favourite.find_by(favouritable_id: params[:id])
    @fav.destroy
    if @fav.favouritable_type == "User"
      redirect_to nomad_community_path, notice: "Nomad has been removed from your favourites"
    else
      redirect_to cafe_path(@fav.favouritable_id), notice: "Cafe has been removed from your favourites!"
    end
  end

  private

  def fav_params
    params.require(:favourite).permit(:favouritable_type, :favouritable_id)

  end

end
