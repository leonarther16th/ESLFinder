class UserStatesController < ApplicationController
  before_action :set_user_state, only: [:show, :edit, :update, :destroy]

  # GET /user_states
  # GET /user_states.json
  def index
    @user_states = UserState.all
  end

  # GET /user_states/1
  # GET /user_states/1.json
  def show
  end

  def setState
    if current_user == User.find_by_id(params[:user_id]) || User.find_by_id(params[:user_id]).current_active_state == 'admin'
      session[:return_to] ||= request.referer
      redirect_to session.delete(:return_to), :flash => { :error => "You can't change your account state!" }
    else
      other_user_states = UserState.where('user_id = ?', params[:user_id])
      if other_user_states 
        other_user_states.each do |s|
          s.active = false
          s.save
        end
      end

      @user_state = UserState.new
      @user_state.user_state = params[:user_state]
      @user_state.user_id = params[:user_id]
      @user_state.active = true
      @user_state.save


      session[:return_to] ||= request.referer
      redirect_to session.delete(:return_to)
    end
  end

  # GET /user_states/new
  def new
    @user_state = UserState.new
  end

  # GET /user_states/1/edit
  def edit
  end

  # POST /user_states
  # POST /user_states.json
  def create
    @user_state = UserState.new(user_state_params)

    respond_to do |format|
      if @user_state.save
        format.html { redirect_to @user_state, notice: 'User state was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_state }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_states/1
  # PATCH/PUT /user_states/1.json
  def update
    respond_to do |format|
      if @user_state.update(user_state_params)
        format.html { redirect_to @user_state, notice: 'User state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_states/1
  # DELETE /user_states/1.json
  def destroy
    @user_state.destroy
    respond_to do |format|
      format.html { redirect_to user_states_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_state
      @user_state = UserState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_state_params
      params.require(:user_state).permit(:user_id, :user_state, :active)
    end
end
