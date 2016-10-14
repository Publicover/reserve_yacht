class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all

    respond_to do |format|
      format.html
      format.csv { send_data @reservations.to_csv }
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to @reservation
    else
      render 'new'
    end
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update(reservation_params)
      redirect_to @reservation
    else
      render 'edit'
    end

  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    redirect_to reservations_path
  end

  private

    def reservation_params
      params.require(:reservation).permit(:prefix_one, :f_name_one, :l_name_one, :prefix_two, :f_name_two, :l_name_two, :full_company_name, :title, :mla_title, :mailing_address, :suite, :city, :state, :zip, :work_phone, :cell_phone, :email_address, :re_enter_email_address, :supplier_guest_speaker, :hotel_arrival, :hotel_departure, :room_type, :special_needs, :special_requests)
    end

end
