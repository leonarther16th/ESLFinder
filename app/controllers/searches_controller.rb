class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :def_vars, only: [:new, :edit, :create, :update, :seat]
  # GET /searches
  # GET /searches.json
  def index

    @searches = Search.all
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
  end

  # GET /searches/new
  def new
    @search = Search.new
    @search.user_id = current_user.id
    @search.num_seats = 1

    @halifax_lowest_price = School.find_by_city_id(100).offers.order(:weekly_price).first.weekly_price
    @ottawa_lowest_price = School.find_by_city_id(200).offers.order(:weekly_price).first.weekly_price
    @toronto_lowest_price = School.find_by_city_id(300).offers.order(:weekly_price).first.weekly_price

    @halifax_saving = School.find_by_city_id(100).offers.order(:weekly_price).first.regular_price - @halifax_lowest_price
    @ottawa_saving = School.find_by_city_id(200).offers.order(:weekly_price).first.regular_price - @ottawa_lowest_price
    @toronto_saving = School.find_by_city_id(300).offers.order(:weekly_price).first.regular_price - @toronto_lowest_price


  end

  # GET /searches/1/edit
  def edit
    
  end

  def find
    @m = 'welcome rr ff dd'
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(search_params)
   

    respond_to do |format|
      if @search.save
        format.html { redirect_to seat_url, notice: 'Search was successfully created.' }
        format.json { render action: 'show', status: :created, location: @search }
        format.js {}
      else
        format.html { render action: 'new' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json
  def update
   
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: 'Search was successfully updated.' }
        format.json { head :no_content }
       
      else
        format.html { render action: 'edit' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  # DELETE /searches/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url }
      format.json { head :no_content }
    end
  end

  def seat
    @seat = Seat.all
    @search = Search.new
    @search.user_id = current_user.id
    @search.num_seats = 1
    @last_search = Search.find(params[:id])
    @search.city = @last_search.city
    @search.country = @last_search.country
    @search.num_weeks = @last_search.num_weeks
    @search.start_date = @last_search.start_date
    all_region_id = Region.where("name = ?", "All").first.id
    # old search results
    @school = School.find_all_by_city_id(@last_search.city_id)
    @bookable_offers = Offer.where('? between start_date and end_date and ? between min_num_weeks and max_num_weeks and (regions = ? or regions = ?) and school_id in (?) and end_date >= ?',
                                   @last_search.start_date, @last_search.num_weeks, @last_search.country.region.id.to_s, all_region_id.to_s, @school.map{|x| x.id}, Time.now).count

    @offers = Offer.where('(regions = ? or regions = ?) and school_id in (?) and end_date >= ?', @last_search.country.region.id.to_s,
                          all_region_id.to_s, @school.map{|x| x.id}, Time.now).sort_by {|offer| offer.sort({start_date: @last_search.start_date, num_weeks: @last_search.num_weeks})}
    @s = 'toronto-drowing.jpg'
    user_settings = current_user.user_setting
    @increase_by = user_settings.setting['increase_prices_by'].to_f
    @hide_sug_price = user_settings.setting['hide_suggested_student_price']

    @short_courses = [{name: 'General English', price: 295}, {name: 'IELTS', price: 350}, {name: 'University Pathway Program - UPP', price: 354}, {name: 'Business English', price: 315} ]
    @all_cities = [{name: 'Toronto Campus', low: 0.4, photo: 'toronto-drowing.jpg'}, {name: 'Ottawa Campus', low: 0.45, photo: 'ottawa-drowing.jpg'},  {name: 'Halifax Campus', low: 0.5, photo: 'halifax-drowing.jpg'}]
    @pricing_scheme = [{date: '2014-06-02', price: 0}, {date: '2014-07-07', price: 0.1}, {date: '2014-08-04', price: 0.20}]
    @added_discount = @pricing_scheme.find_all { |price| price[:date] == @last_search.start_date.to_s}

    if @added_discount == nil
      @added_discount= [{price: 0}]
    end

    @booking_launch_time = Time.zone.local(2014, 11, 17, 9, 30,0)
    @time_now = Time.zone.now
    @booking = true if @time_now >= @booking_launch_time

    

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    def def_vars
      @courses = Course.all
      @cities = City.all
      @countries = Country.all.order(name: :asc)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:num_weeks, :num_seats, :start_date, :student_name, :course_id, :user_id, :city_id, :country_id)
    end
end
