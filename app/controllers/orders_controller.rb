require 'securerandom'
class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    if current_user.current_active_state == 'admin'
      @orders = Order.all.paginate(:page => params[:page])
    else
      @orders = current_user.orders.paginate(:page => params[:page])
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    user_order = current_user.orders.find_by_id(params[:id])
    if !user_order
      redirect_to :root
    end
  end

  # GET /orders/new
  def new
    @order = Order.new(order_params)
    @order.user = current_user
    @order.offer_code = SecureRandom.hex(8)
    @order.save
    redirect_to @order, notice: 'Order was successfully created.'
  end

  # GET /orders/1/edit
  def edit
    render 'public/404.html'
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.permit(:user_id, :offer_id, :state, :num_weeks, :total_price, :offer_code, :start_date, :expire_date, :num_seats)
    end
end
