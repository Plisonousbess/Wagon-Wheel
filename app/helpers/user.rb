helpers do
	
	def current_user
		@current_user = User.find_by_id(session[:user_id])
	end

	def is_auth?
		!session[:user_id].nil?
	end

end
