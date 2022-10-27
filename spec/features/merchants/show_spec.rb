require 'rails_helper'

RSpec.describe 'Merchant Show Page', :vcr do

  it 'can get to merchants show page' do
    visit "/merchants/1"
    expect(page).to have_content('Schroeder-Jerde')
  end

  it 'has item names' do
    visit "/merchants/1"
# save_and_open_page
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Qui Esse")
  end

  it 'links each item name to item show page' do
    visit "/merchants/1"

    click_on "Item Nemo Facere"
    expect(current_path).to eq("/items/4")
  end


end
