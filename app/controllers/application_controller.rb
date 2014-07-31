class ApplicationController < ActionController::Base
	before_filter :require_login

	private
	def require_login
		redirect_to new_sessions_path unless session[:usuario_id] ||controller_name =="sessions"



	end
end
