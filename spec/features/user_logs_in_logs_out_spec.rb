require 'rails_helper'

describe 'user visits homepage' do
  context 'logs in' do

    it 'works with valid credentials' do

      User.create(username: 'Steve', password: 'steve')

      visit root_path
      click_link 'Login'

      fill_in 'Username', with: 'Steve'
      fill_in 'Password', with: 'steve'
      click_button 'Submit'

      expect(page).to have_content("How")
    end

    it 'doesnt work with invalid credentials' do

      visit root_path
      click_link 'Login'

      fill_in 'Username', with: 'Chuck'
      fill_in 'Password', with: 'password'
      click_button 'Submit'

      expect(page).to have_content('Password or username is incorrect')

    end
  end


end