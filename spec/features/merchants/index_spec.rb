require 'rails_helper'

RSpec.describe 'Merchant Index Page', :vcr do

  it 'can get to merchants index page' do
    visit merchants_path
    # save_and_open_page
    expect(page).to have_content('Merchants')
  end

  it 'has merchant names' do
    visit merchants_path

    expect(page).to have_content("Willms and Sons")
    expect(page).to have_content("Thiel Inc")
  end

  it 'links each merchant name to merchant show page' do
    visit merchants_path

    click_on "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")
  end


end
