require 'securerandom'
class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    if !params[:canceled]
      @hide_canceled = 'canceled'
    else
      @hide_canceled = params[:canceled]
    end
    @schools = School.all
    if current_user.current_active_state == 'admin' && params[:search]
      @orders = Order.joins(:school, :user).where('(schools.name like ? or orders.state like ? or users.email like ? or "" = ?) and orders.state != ?',
                                                  "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", @hide_canceled)
      .paginate(:page => params[:page]).order(created_at: :desc)

    elsif current_user.current_active_state == 'admin' && !params[:search]
      @orders = Order.where('orders.state != ?', @hide_canceled)
      .paginate(:page => params[:page]).order(created_at: :desc)

    elsif current_user.current_active_state != 'admin' && !params[:search]
      @orders = current_user.orders.joins(:school, :user)
      .where('(schools.name like ? or orders.state like ? or users.email like ? or "" = ?) and orders.state != ?',
             "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", @hide_canceled)
      .paginate(:page => params[:page]).order(created_at: :desc)

    elsif current_user.current_active_state != 'admin' && !params[:search]
      @orders = current_user.orders.joins(:school, :user)
      .where('orders.state != ?', @hide_canceled)
      .paginate(:page => params[:page]).order(created_at: :desc)

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
    offer = Offer.find_by_id(params[:offer_id])
    prime = 2711
    @order.user = current_user
    @order.offer_code = "#{(offer.weekly_price.to_i * prime).to_s}#{rand_letter(1)}#{params[:num_weeks].to_i * prime}#{rand_letter(1)}#{params[:start_date].to_date.strftime('%y%m%d').to_i * prime}#{rand_letter(1)}#{offer.regions.to_i * prime}#{rand_letter(1)}#{offer.school_id.to_i * prime}#{rand_letter(1)}#{offer.course_id.to_i * prime}#{rand_letter(1)}#{(Order.last.id+1) * prime}"

    #add school id
    
    @order.save
    OrderMailer.order_booking(@order).deliver
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
        #send email
        OrderMailer.order_booking(@order).deliver
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
