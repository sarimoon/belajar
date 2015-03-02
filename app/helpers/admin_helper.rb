module AdminHelper
	def role
		if current_user.role = 0
			@role = "User"
		elsif current_user.role = 1
			@role = "Admin"
		else
			@role = "Undefined"
		end
	end
end
