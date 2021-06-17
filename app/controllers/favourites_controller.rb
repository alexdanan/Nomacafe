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
    @new_fav.save!

    redirect_to nomad_community_path




  end

  def destroy
  end

  private

  def fav_params
    params.require(:favourite).permit(:favouritable_type, :favouritable_id)

  end

end
