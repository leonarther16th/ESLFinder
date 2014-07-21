class AgenciesController < ApplicationController
	def index
	end

	def show
	end

	def create
	end

	def edit
		@agency = current_user.agency
	end

	def update
		@agency = Agency.find(params[:id])
	    respond_to do |format|
	      if @agency.update(agency_params)
	        format.html { redirect_to @agency, notice: 'User setting was successfully updated.' }
	        format.json { head :no_content }
	        format.js { render 'update_agency.js.erb' }
	      else
	      	format.js { render 'public/404.html' }
	        format.html { render action: 'edit' }
	        format.json { render json: @agency.errors, status: :unprocessable_entity }
	      end
	    end
	end

	private

	def agency_params
      params.require(:agency).permit(:name, :email, :website, :country_id, :city, :ref_num, :address)
    end
end
