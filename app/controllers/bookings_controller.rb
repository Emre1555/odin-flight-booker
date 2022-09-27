class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show ]


  # GET /bookings/1 or /bookings/1.json
  def show
    @booking = Booking.find(params[:id])  
    @flight = Flight.find(@booking.flight_id)
  end
  
  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:flight])
    @number_of_passengers = params[:passenger_number].to_i
    @number_of_passengers.times { @booking.passengers.build }
  end


  # POST /bookings or /bookings.json
  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_url(@booking), notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end
end
