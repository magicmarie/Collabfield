require 'rails_helper'

RSpec.describe 'Visit single post', type: :feature, js: true do
  let(:user) { create(:user) }
  let!(:category) { create(:category, branch: 'hobby')}
  let!(:post) { create(:post, category: category) }

  scenario 'User goes to a single post from the home page', js: true do
    visit root_path
    find('.single-post-card').click
    expect(page).to have_selector('body .modal')
    page.find('.interested a').click
    expect(page).to have_selector('#single-post-content p', text: post.content)
  end
end