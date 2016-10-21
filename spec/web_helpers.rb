def create_user(email: "default@example.com",
								password: "password",
								password_confirmation: "password")
	visit('/users')

	fill_in :email, with: email
	fill_in :password, with: password
	fill_in :password_confirmation, with: password_confirmation
	click_button('Sign Up')
end
