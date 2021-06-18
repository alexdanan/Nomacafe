class BookingsController < ApplicationController
    before_action :find_table, only: [:new, :create]
    before_action :find, only: :destroy
  
    def index
      @bookings = Booking.all
    end
  
    def show
      @booking = Booking.find(params[:id])
      @bookings = Booking.all
      @table = Table.new
      authorize @booking
      #TODO: comment this in when tis fixed
    end

    def edit
      @booking = Booking.find(params[:id])
      authorize @booking
    end
  
    def new
      @booking = Booking.new
      authorize @booking
    end
  
    def create
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      authorize @booking
      @booking.table = @table
      if @booking.save
        redirect_to booking_path(@booking)
      else
        render 'tables/show'
      end
    end
  
    def destroy
      authorize @booking
      @booking.destroy
      redirect_to dashboard_path
    end
  
    def update
      @booking = Booking.find(params[:id])
      @booking.update(booking_update_params)
      redirect_to dashboard_path
      authorize @booking
    end
    private
  
    def booking_params
      params.require(:booking).permit(:table_id, :start_time, :end_time, :status, :day, :visible)
    end
  
    def booking_update_params
      params.require(:booking).permit(:status)
    end
  
    def find_table
      @table = Table.find(params[:table_id])
    end
  
    def find
      @booking = Booking.find(params[:id])
    end
  
  end