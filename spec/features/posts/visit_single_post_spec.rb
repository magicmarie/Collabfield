require 'rails_helper'

RSpec.feature 'Visit single post', type: :feature do
  let(:user) { double(:user) }
  let(:post) { double(:post) }

  scenario 'User goes to a single post from the home page', js: true do
    post
    visit root_path
    page.find('.single-post-card').click
    expect(page).to have_selector('body .modal')
    page.find('.interested a').click
    expect(page).to have_selector('#single-post-content p', text: post.content)
  end
end
