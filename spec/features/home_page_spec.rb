require "rails_helper"

RSpec.feature "Home page", :type => :feature do
  scenario "New user lands on site" do
    2.times { create(:penguin) }

    visit "/"

    expect(page).to have_selector('.penguin-image', count: 2)
    expect(page).to have_selector('.penguin-species', count: 2)
  end
end
