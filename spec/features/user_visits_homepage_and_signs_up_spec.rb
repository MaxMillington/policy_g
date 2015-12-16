require 'rails_helper'

describe 'user visits homepage' do
  context 'signs up' do
    it 'works with username' do
      visit root_path
      click_link 'Sign Up'

      expect(current_path).to eq('/users/new')

      fill_in 'Username', with: 'monkey'
      fill_in 'Password', with: 'password'
      click_button 'Submit'

      expect(current_path).to eq(root_path)
    end

    it 'doesnt work without a username or if username is taken' do

      User.create(username: 'Michael', password: 'password')

      visit root_path
      click_link 'Sign Up'

      expect(current_path).to eq('/users/new')

      fill_in 'Username', with: ''
      fill_in 'Password', with: 'password'
      click_button 'Submit'

      expect(current_path).to eq('/users')

      fill_in 'Username', with: 'Michael'
      fill_in 'Password', with: 'password'
      click_button 'Submit'

      expect(current_path).to eq('/users')

    end
  end


end