class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  before_action :set_vars
  before_action :must_be_admin

  # GET /offers
  # GET /offers.json
  def index
    #@offers = current_user.offers.all
    @offers = Offer.all
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
  end

  # GET /offers/new
  def new
    @offer = Offer.new
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers
  # POST /offers.json
  def create
  
  # validate_save = false
  #   x = params[:max_num_weeks]
  #   regions = params[:regions]
  #   schools = params[:school_id]
  #   regions = ["1","2","3","4","6","7","8"]
  #   schools = ["1","2","3"]
  #   regions.each do |r|
  #     schools.each do |s|
  #       if r != "" and s != ""
  #         @offer = Offer.new(school_id: s, weekly_price: params[:weekly_price], min_num_weeks: params[:min_num_weeks], max_num_weeks: params[:max_num_weeks], start_date: params[:start_date], end_date: params[:end_date], num_of_seats: params[:num_of_seats], weekly_limit: params[:weekly_limit], flag: [:flag], regions: r, pay_within: params[:pay_within], course_id: params[:course_id], regular_price: params[:regular_price])
  #         if @offer.save
  #           validate_save = true
  #         else
  #           validate_save = false
  #         end
  #       end
  #     end
  #   end
    


    @offer = Offer.new(offer_params)


    respond_to do |format|
      if @offer.save
        format.html { redirect_to offers_path, notice: 'Offer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @offer }
      else
        format.html { render action: 'new' }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to offers_path, notice: 'Offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
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
    def offer_params
      params.require(:offer).permit(:weekly_price, :min_num_weeks, :max_num_weeks, :start_date, :end_date, :num_of_seats, :weekly_limit, :flag, :pay_within, :course_id, :regular_price, :school_id, :regions, schools: [] )
      # params.require(:offer).permit( :weekly_price, :min_num_weeks, :max_num_weeks, :start_date, :end_date, :num_of_seats, :weekly_limit, :flag,  :pay_within, :course_id, :regular_price).tap do |whitelisted|
      #   whitelisted[:regions] = params[:offer][:regions]
      #   whitelisted[:school_id] = params[:offer][:school_id]
      # end
    end
end
