class MembersController < ApplicationController
 	def index
    	@members = Member.where mirror_id: params[:mirror_id]
    end

	def create
    	@mirror = Mirror.find(params[:mirror_id])
    	@member = @mirror.members.create(member_params)
    	redirect_to mirror_path(@mirror)
  	end

  	private
   		def member_params
     		params.require(:member).permit(:first_name, :last_name, :activity)
    	end

    def activity
    	Member.find(params[:id)]).activity
end
