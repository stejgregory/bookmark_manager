feature 'Creating users' do
	scenario 'creating a user' do
		create_user('ben@example.com', 'password', 'password')
		initial_length = User.all.length
		create_user('ben@example.com', 'password', 'password')
		expect(User.all.length).to be > initial_length
	end

	scenario 'user provides mismatching passwords' do
		create_user(password_confirmation: 'wrong')
  	expect(current_path).to eq('/users')
  	expect(page).to have_content 'Password and confirmation password do not match'
	end

	scenario "I can't sign up without an email address" do
    expect { create_user(email: nil, password: "kittycat", password_confirmation: "kittycat") }.not_to change(User, :count)
  end

	scenario "I can't sign up with an invalid email address" do
    expect { create_user(email: "invalid@email") }.not_to change(User, :count)
  end

end
