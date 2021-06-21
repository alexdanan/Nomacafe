class CafesController < ApplicationController

  before_action :skip_pundit?
  before_action :set_cafe, only: [:show, :edit, :update, :destroy]

  def index
    @cafes = policy_scope(Cafe)
    @markers = @cafes.geocoded.map do |cafe|
      {
      lat: cafe.latitude,
      lng: cafe.longitude,
      info_window: render_to_string(partial: "info_window", locals: { cafe: cafe }), #optional
      image_url: helpers.asset_url("https://res.cloudinary.com/sassia93/image/upload/v1624307846/cup_3_jfjzkq.png"),
      link: "/cafes/#{cafe}"
      }
    end
  end


  def show
    @booking = Booking.new
    @tables = @cafe.tables
    #authorize @cafe
    #authorize @tables

    @user_reviews = @cafe.reviews.select { |review| review.booking.user == current_user }

    unless @user_reviews.empty?
      @average_user_rating = average_rating(@user_reviews)
    end


    @other_reviews = @cafe.reviews.select { |review| review.booking.user != current_user }
    @reviews = @user_reviews + @other_reviews


    @new_fav = Favourite.new
  end



  def new
    @cafe = Cafe.new
    #authorize @cafe
  end

  def create
    @cafe = Cafe.new(cafe_params)
    @cafe.user = current_user
    #authorize @cafe

    if @cafe.save
      redirect_to dashboard, notice: "Your Cafe has been created!"
    else
      render :new
    end
  end

  def edit
    #authorize @cafe
  end

  def update
    if @cafe.update(cafe_params)
      redirect_to dashboard, notice: "Your Cafe has been updated"
    else
    render :edit
    end


  end

  def destroy
    @cafe.destroy
    redirect_to cafes_path, notice: "Your Cafe was succesfully destroyed"
  end

  private

  def set_cafe
    @cafe = Cafe.find(params[:id])
  end

  def cafe_params

  params.require(:cafe).permit(:name, :location, :photo)

  end

  def average_rating(reviews)
    ratings = reviews.map do |review|
      review.rating
    end
    verdict = ratings.inject { |sum, el| sum + el }.to_f / ratings.size
    verdict.round(2)
  end

end
