require 'features_helper'

RSpec.describe 'Add a book' do
  # Spec written earlier omitted for brevity

  it 'displays list of errors when params contains errors' do
    visit '/books/new'

    within 'form#book-form' do
      click_button 'Create'
    end

    expect(current_path).to eq('/books')

    expect(page).to have_content('There was a problem with your submission')
    expect(page).to have_content('Title must be filled')
    expect(page).to have_content('Author must be filled')
  end
end