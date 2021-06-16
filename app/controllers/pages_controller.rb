class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @bookings = current_user.bookings.map{|booking| {title: booking.booking_headline, start: booking.start_time.strftime("%Y-%m-%d"), end: booking.end_time.strftime("%Y-%m-%d")}}
    start_date = params.fetch(:start_date, Date.today).to_date
    @date_range = (start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)





# CAFE_DASHBOARD

    @user_cafe = current_user.cafe

    @tables = @user_cafe&.tables




    credits_range = @tables&.map do |t|
      t.min_credits
    end

    min_credits = credits_range&.min
    max_credits = credits_range&.max

    if min_credits == max_credits
      @user_cafe_credits = "#{min_credits}€/h/table"
    else
      @user_cafe_credits ="from #{min_credits}€ to #{max_credits}€ /h/table (dependent on table size)"
    end

  end

end
