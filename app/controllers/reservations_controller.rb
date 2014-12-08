class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
    redirect_to :root
    @reservations = Reservation.all

  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
    redirect_to :root if @reservation.user != current_user 
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new(order_id: params[:order_id])
    @reservation.user = current_user
    @order = Order.find_by_id(params[:order_id])
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      @order = Order.find_by_id(@reservation.order_id)
      if @reservation.save
        @order.state = 'confirmed'
        @order.save
        OrderMailer.order_confirmation(@order).deliver
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reservation }
      else
        format.html { render action: 'new'}
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
      @order = @reservation.order
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:user_id, :order_id, :card_type, :card_name, :card_number, :expiry_month, :expiry_year, :cvc)
    end
end
