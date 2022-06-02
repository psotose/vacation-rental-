class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[ show destroy ]
  before_action :set_cabin, except: %i[index destroy]

  # GET /reservations or /reservations.json
  def index
    @reservations = Reservation.where(email: current_user.email)
  end

  # GET /reservations/1 or /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
  end

  # POST /reservations or /reservations.json
  def create

    @reservation = Reservation.new(reservation_params)
    @reservation.cabin = @cabin

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to cabin_reservation_url(@cabin.id, @reservation.id) , notice: "Su reserva se ha realizado con éxito." }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1 or /reservations/1.json
  def destroy
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to user_reservations_url(current_user.id), notice: "Reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def set_cabin
      @cabin = Cabin.find(params[:cabin_id])
    end  

    # Only allow a list of trusted parameters through.
    def reservation_params
      params.require(:reservation).permit(:start_time, :end_time, :name, :email, :cabin_id, :user_id)
    end
end
