class AutoOffersController < ApplicationController
  before_action :set_auto_offer, only: [:show, :edit, :update, :destroy]
  before_action :set_vars
  before_action :must_be_admin

  # GET /auto_offers
  # GET /auto_offers.json
  def index
    @auto_offers = AutoOffer.all
  end

  # GET /auto_offers/1
  # GET /auto_offers/1.json
  def show
  end

  # GET /auto_offers/new
  def new
    @auto_offer = AutoOffer.new
  end

  # GET /auto_offers/1/edit
  def edit
  end

  # POST /auto_offers
  # POST /auto_offers.json
  def create
    @auto_offer = AutoOffer.new(auto_offer_params)

    respond_to do |format|
      if @auto_offer.save
        format.html { redirect_to offers_path, notice: 'Auto offers ware successfully created.' }
        format.json { render action: 'show', status: :created, location: @auto_offer }
      else
        format.html { render action: 'new' }
        format.json { render json: @auto_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_offers/1
  # PATCH/PUT /auto_offers/1.json
  def update
    respond_to do |format|
      if @auto_offer.update(auto_offer_params)
        format.html { redirect_to @auto_offer, notice: 'Auto offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @auto_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_offers/1
  # DELETE /auto_offers/1.json
  def destroy
    @auto_offer.destroy
    respond_to do |format|
      format.html { redirect_to auto_offers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_offer
      @auto_offer = AutoOffer.find(params[:id])
    end

    def set_vars
      @schools = current_user.schools
      @courses = Course.all
    end

    def must_be_admin
      if current_user.current_active_state != 'admin'
        redirect_to :root
      end
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_offer_params
      params.require(:auto_offer).permit(:weekly_price, :min_num_weeks, :max_num_weeks, :start_date, :end_date, :num_of_seats, :weekly_limit, :flag, :pay_within, :course_id, :regular_price, {regions: []}, {schools: []})
    end
end
