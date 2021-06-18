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
      image_url: helpers.asset_url("https://res.cloudinary.com/sassia93/image/upload/v1623958155/cup_makqh2.svg"),
      link: "/cafes/#{cafe}"
      }
    end

    # @cafes.each do |cafe|
    #   tables = cafe.tables
    #   credits_range = @tables.map do |t|
    #   t.min_credits
    #   end
    #   min_credits = credits_range.min
    #   max_credits = credits_range.max

    #   if min_credits == max_credits
    #     @cafe_credits = "#{min_credits}€/h/table"
    #   else
    #     @cafe_credits ="from #{min_credits}€ to #{max_credits}€ /h/table (dependent on table size)"
    #   end
    # end
  end


  def show
    @booking = Booking.new
    @tables = @cafe.tables
    authorize @cafe
    authorize @tables

    credits_range = @tables.map do |t|
      t.min_credits
    end

    min_credits = credits_range.min
    max_credits = credits_range.max

    if min_credits == max_credits
      @cafe_credits = "#{min_credits}€/h/table"
    else
      @cafe_credits ="from #{min_credits}€ to #{max_credits}€ /h/table (dependent on table size)"
    end

    @user_reviews = @cafe.reviews.select { |review| review.booking.user == current_user }
    @other_reviews = @cafe.reviews.select { |review| review.booking.user != current_user }
    @reviews = @user_reviews + @other_reviews
  end

  def new
    @cafe = Cafe.new
    authorize @cafe
  end

  def create
    @cafe = Cafe.new(cafe_params)
    @cafe.user = current_user
    authorize @cafe

    if @cafe.save
      redirect_to dashboard, notice: "Your Cafe has been created!"
    else
      render :new
    end
  end

  def edit
    authorize @cafe
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

end
