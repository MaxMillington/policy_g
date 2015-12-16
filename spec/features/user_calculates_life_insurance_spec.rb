require 'rails_helper'

describe 'valid user' do
  context 'logs in' do

    it 'works with valid numbers' do

      User.create(username: 'Steve', password: 'steve')

      visit root_path
      click_link 'Login'

      fill_in 'Username', with: 'Steve'
      fill_in 'Password', with: 'steve'
      click_button 'Submit'
      
      fill_in 'Total annual income', with: '100000'
      fill_in 'Savings', with: '200000'
      fill_in 'Saved for retirement', with: '50000'

      click_button 'Calculate'

      expect(page).to have_content('$450,000.00')
    end

  end


end