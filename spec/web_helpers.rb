def create_user(email: "default@example.com",
								password: "password",
								password_confirmation: "password")
	visit('/users')

	fill_in :email, with: email
	fill_in :password, with: password
	fill_in :password_confirmation, with: password_confirmation
	click_button('Sign Up')
end

def sign_in_user(email: "default@example.com",
								password: "password")
	visit('/sign_in')

	fill_in :email, with: email
	fill_in :password, with: password
	click_button('Sign In')
end
