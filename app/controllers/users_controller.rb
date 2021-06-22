class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @review = Review.all
    @user_reviews = @review.select { |review| review.booking.user == @user }
  end
end
