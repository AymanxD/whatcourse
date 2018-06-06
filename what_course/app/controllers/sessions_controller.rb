class SessionsController < ApplicationController

	def new
		# Render signin form for a user
	end

	def creare
		# create a session 
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end

end
