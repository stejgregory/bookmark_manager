feature 'Creating users' do
	scenario 'creating a user' do
		create_user
		initial_length = User.all.length
		create_user
		expect(User.all.length).to be > initial_length
	end
end