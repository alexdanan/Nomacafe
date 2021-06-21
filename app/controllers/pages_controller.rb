class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard


    unless current_user.is_cafe_owner?

    @bookings = current_user.bookings.map{|booking| {
      title: booking.booking_headline, 
      start: booking.start_time.strftime("%Y-%m-%dT%H:%M:%S"), 
      end: booking.end_time&.strftime("%Y-%m-%dT%H:%M:%S"),
      image_url: helpers.cl_image_path(booking.table.cafe.photo.key),
      short_title: "Booking confirmed at #{booking.cafe.name}" 
    }}

    start_date = params.fetch(:start_date, Date.today).to_date
    @date_range = (start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

    else
# CAFE_DASHBOARD

      @user_cafe = current_user.cafe


      @tables = @user_cafe&.tables


      @reviews = @user_cafe.reviews


      @bookings = @user_cafe.bookings.map{ |booking| {
        title: "#{booking.table.name} - @#{booking.user.user_name}",
        start: booking.start_time.strftime("%Y-%m-%dT%H:%M:%S"),
        end: booking.end_time.strftime("%Y-%m-%dT%H:%M:%S"),
      #   if booking.user.photo.attached?
      #     image_url: helpers.cl_image_path(booking.user.photo.key)
      #   else
      #     image_url: "https://kitt.lewagon.com/placeholder/users/arthur-littm"
      #   end
      }}
    end

  end

  def nomad_community
    @nomads = User.where(nomacafe_type: "nomad")
    @new_fav = Favourite.new
    @user = current_user
    @fav_nomads = @user.favourite_users
  end
end
