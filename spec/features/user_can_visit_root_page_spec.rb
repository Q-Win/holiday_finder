require 'rails_helper'

feature "As a visitor" do
  scenario "visit home page", :js do
    visit root_path

    expect(page).to have_content("Holiday Fun!")
  end
end
