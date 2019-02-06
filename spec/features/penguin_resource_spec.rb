require 'rails_helper'

describe 'Penguin resource', type: :feature do
  it 'can create a penguin' do
    visit new_penguin_path
    fill_in 'Species', with: 'Adelie'
    attach_file 'Image', 'spec/fixtures/images/Adelie.jpg'
    click_button 'Save Penguin'
    expect(Penguin.count).to eq(1)
  end
end
