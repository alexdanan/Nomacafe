class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    #authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    cafe = @booking.table.cafe
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    #authorize @review
    if @review.save
      redirect_to cafe_path(cafe)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    #authorize @review
    @review.destroy
    redirect_to cafe_path(@review.booking.table.cafe)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end
end
