# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: 7.89
    fill_in 'Author', with: 'Nikolas Turman'
    #fill_in 'Published Date', with: '10-06-1999'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content(7.89)
    expect(page).to have_content('Nikolas Turman')
  end
end
