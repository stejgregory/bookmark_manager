def create_user
	visit('/users')

	fill_in :email, with: "ben@example.com"
	fill_in :password, with: "password"
	click_button('Sign Up')
end