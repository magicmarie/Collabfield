require 'rails_helper'

RSpec.feature 'Login', type: :feature do
  let(:user) { create(:user) }

  # js: true argument allows to test functionalities which involves JavaScript.
  scenario 'user navigates to the login page and succesfully logs in', js: true do
    visit '/'
    page.find('nav a', text: 'Login', visible: false).click
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    find('.login-button').click
    expect(page).to have_selector('#user-settings')
  end
end
