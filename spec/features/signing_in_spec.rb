feature "Signing In" do
  scenario "User should be able to sign in and a welcome message be displayed" do
    create_user
    sign_in_user
    expect(page).to have_content "Welcome, default@example.com"
  end
end
