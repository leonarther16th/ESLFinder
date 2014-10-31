class UserSettingsController < ApplicationController
  before_action :set_user_setting, only: [:show, :edit, :update, :destroy]
  before_action :set_some_vars, only: [:edit, :update]
  # GET /user_settings
  # GET /user_settings.json
  def index
    @user_settings = UserSetting.all
  end

  # GET /user_settings/1
  # GET /user_settings/1.json
  def show
  end

  # GET /user_settings/new
  def new
    @user_setting = UserSetting.new
  end

  # GET /user_settings/1/edit
  def edit
    if current_user.user_setting.id != @user_setting.id 
      #head status: 404
      render 'public/404.html'
      #redirect_to '/'
    end

    @num_offers = Offer.all.count
    
  end

  # POST /user_settings
  # POST /user_settings.json
  def create
    @user_setting = UserSetting.new(user_setting_params)

    respond_to do |format|
      if @user_setting.save
        format.html { redirect_to @user_setting, notice: 'User setting was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_setting }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_settings/1
  # PATCH/PUT /user_settings/1.json
  def update
    respond_to do |format|
      if @user_setting.update(user_setting_params)
        format.html { redirect_to @user_setting, notice: 'User setting was successfully updated.' }
        format.json { head :no_content }
        format.js { render 'update_user_setting.js.erb' }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_settings/1
  # DELETE /user_settings/1.json
  def destroy
    @user_setting.destroy
    respond_to do |format|
      format.html { redirect_to user_settings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_setting
      if UserSetting.exists?(params[:id])
        @user_setting = UserSetting.find(params[:id]) 
      else
        render 'public/404.html'
      end
      @app_settings = AppSetting.all
    end

    def set_some_vars
       @agency = current_user.agency
       @countries = Country.all
       @all_users = User.paginate(:page => params[:page])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_setting_params
      #params.require(:user_setting).permit(:user_id, setting: [])
      params.require(:user_setting).permit(:user_id).tap do |whitelisted|
        whitelisted[:setting] = params[:user_setting][:setting]
      end
      
    end
end
