require 'spec_helper'

feature 'Adding Tags' do
  scenario 'add a single tag to a link' do
    visit '/links/new'
    fill_in 'title', with: 'Makers Academy'
    fill_in 'url', with: 'http://makersacademy.com'
    fill_in 'tags', with: 'education'

    click_button 'Create Link'
    link = Link.all
    expect(link.tags.map(&:name)).to include('education')
  end

  scenario 'add multiple tags to a link' do
    visit '/links/new'
    fill_in 'title', with: 'Makers Academy'
    fill_in 'url', with: 'http://makersacademy.com'
    fill_in 'tags', with: 'education programming'

    click_button 'Create Link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education', 'programming')
  end
end
