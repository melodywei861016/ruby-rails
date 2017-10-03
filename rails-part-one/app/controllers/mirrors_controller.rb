class MirrorsController < ApplicationController
	def index
    	@mirrors = Mirror.all
  	end

	def show
    	@mirror = Mirror.find(params[:id])
  	end

	def new
		@mirror = Mirror.new
	end

	def edit
		@mirror = Mirror.find(params[:id])
	end

	def create
		@mirror = Mirror.new(mirror_params)
 
  		if @mirror.save
  			redirect_to @mirror
  		else
  			render 'new'
  		end
	end

	def update
  		@mirror = Mirror.find(params[:id])
 
  		if @mirror.update(mirror_params)
    		redirect_to @mirror
  		else
    		render 'edit'
  		end
	end

	def destroy
		@mirror = Mirror.find(params[:id])
		@mirror.destroy

		redirect_to mirrors_path
	end

	private
  		def mirror_params
    		params.require(:mirror).permit(:title)
  		end

end
