require 'rails_helper'

describe 'User logs in' do
  scenario 'successfully' do
    user = create :user

    visit root_path
    fill_in 'session[email]', with: user.email
    fill_in 'session[password]', with: user.password

    click_on "Log in"

    expect(page).to have_text("Logged in!")
  end

  scenario 'with wrong email' do
    user = create :user

    visit root_path
    fill_in 'session[email]', with: ''
    fill_in 'session[password]', with: user.password

    click_on "Log in"

    expect(page).to have_text("Invalid email or password")
  end

  scenario 'with wrong password' do
    user = create :user

    visit root_path
    fill_in 'session[email]', with: user.email
    fill_in 'session[password]', with: ''

    click_on "Log in"

    expect(page).to have_text("Invalid email or password")
  end

  scenario 'with wrong password more than 5 times' do
    user = create :user

    visit root_path

    5.times do
      fill_in 'session[email]', with: user.email
      fill_in 'session[password]', with: ''
      click_on "Log in"
    end

    expect(page).to have_text("User is blocked, more than 5 wrong password tries!")
  end
end
