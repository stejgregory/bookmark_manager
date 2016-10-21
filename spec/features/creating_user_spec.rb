feature 'Creating users' do
	scenario 'creating a user' do
		expect { create_user }.to change(User, :count).by 1
	end

	scenario 'user provides mismatching passwords' do
		create_user(password_confirmation: 'wrong')
  	expect(current_path).to eq('/users')
  	expect(page).to have_content 'Password and confirmation password do not match'
	end

	scenario "I can't sign up without an email address" do
    expect { create_user(email: nil) }.not_to change(User, :count)
  end

	scenario "I can't sign up with an invalid email address" do
    expect { create_user(email: "invalid@email") }.not_to change(User, :count)
  end

end
