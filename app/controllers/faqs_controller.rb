class FaqsController < ApplicationController
  before_action :set_faq, only: [:show, :edit, :update, :destroy]

  # GET /faqs
  # GET /faqs.json
  def index
    @faqs = Faq.where('active is ?', true)
    @titles = Faq.select(:category).map(&:category).uniq
  end

  # GET /faqs/1
  # GET /faqs/1.json
  def show
  end

  # GET /faqs/new
  def new
    @faq = Faq.new
    titles = Faq.select(:category).map(&:category).uniq
    @title_list = []
    titles.each do |t|
      @title_list.push([t,t])
    end

  end

  # GET /faqs/1/edit
  def edit
    if current_user.current_active_state != 'admin'
      render 'public/404'
    end
  end

  # POST /faqs
  # POST /faqs.json
  def create
    @faq = Faq.new(faq_params)

    respond_to do |format|
      if @faq.save
        format.html { redirect_to faqs_path, notice: 'Faq was successfully created.' }
        format.json { render action: 'show', status: :created, location: @faq }
      else
        format.html { render action: 'new' }
        format.json { render json: @faq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faqs/1
  # PATCH/PUT /faqs/1.json
  def update
    respond_to do |format|
      if @faq.update(faq_params)
        format.html { redirect_to faqs_path, notice: 'Faq was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @faq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faqs/1
  # DELETE /faqs/1.json
  def destroy
    @faq.destroy
    respond_to do |format|
      format.html { redirect_to faqs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq
      @faq = Faq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faq_params
      params.require(:faq).permit(:question, :answer, :category, :active)
    end
end