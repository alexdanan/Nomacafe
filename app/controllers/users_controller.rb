class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user

    cafes = Cafe.all

    @user_reviews = cafes.map do |c|
      c.reviews.select { |review| review.booking.user == current_user }
    end

    # @reviews = cafes.each do |cafe|
    #   cafe.reviews.select { |review| review.booking.user == @user }
    # end
    # raise
    # @cafe.reviews.select { |review| review.booking.user == current_user }
  end
end
