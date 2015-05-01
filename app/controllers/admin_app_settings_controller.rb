class AdminAppSettingsController < ApplicationController
  before_action :set_admin_app_setting, only: [:show, :edit, :update, :destroy]

  # GET /admin_app_settings
  # GET /admin_app_settings.json
  def index
    @admin_app_settings = AdminAppSetting.all
  end

  # GET /admin_app_settings/1
  # GET /admin_app_settings/1.json
  def show
  end

  # GET /admin_app_settings/new
  def new
    @admin_app_setting = AdminAppSetting.new
  end

  # GET /admin_app_settings/1/edit
  def edit
  end

  # POST /admin_app_settings
  # POST /admin_app_settings.json
  def create
    @admin_app_setting = AdminAppSetting.new(admin_app_setting_params)

    respond_to do |format|
      if @admin_app_setting.save
        format.html { redirect_to @admin_app_setting, notice: 'Admin app setting was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_app_setting }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_app_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_app_settings/1
  # PATCH/PUT /admin_app_settings/1.json
  def update
    respond_to do |format|
      if @admin_app_setting.update(admin_app_setting_params)
        format.html { redirect_to admin_app_settings_path, notice: 'Admin app setting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_app_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_app_settings/1
  # DELETE /admin_app_settings/1.json
  def destroy
    @admin_app_setting.destroy
    respond_to do |format|
      format.html { redirect_to admin_app_settings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_app_setting
      @admin_app_setting = AdminAppSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_app_setting_params
      params.require(:admin_app_setting).permit(:name, :value)
    end
end
