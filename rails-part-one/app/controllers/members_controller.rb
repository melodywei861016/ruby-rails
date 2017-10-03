class MembersController < ApplicationController
	def create
    	@mirror = Mirror.find(params[:mirror_id])
    	@member = @mirror.members.create(member_params)
    	redirect_to mirror_path(@mirror)
  	end
 
  	private
   		def member_params
     		params.require(:member).permit(:first_name, :last_name, :activity)
    	end
end
