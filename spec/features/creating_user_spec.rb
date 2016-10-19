feature 'Creating users' do
	scenario 'creating a user' do
		create_user('ben@example.com', 'password', 'password')
		initial_length = User.all.length
		create_user('ben@example.com', 'password', 'password')
		expect(User.all.length).to be > initial_length
	end

	scenario 'user provides mismatching passwords' do
		create_user('ben@example.com', 'apples', 'pears')
		expect(User.all.length).to be(0)
	end
end
