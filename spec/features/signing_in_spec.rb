feature "Signing In" do
  scenario "User should be able to sign in and a welcome message be displayed" do
    sign_in_user
    expect(current_path).to eq('/links')
    expect(page).to have_content "Welcome, default@example.com"
  end
end
