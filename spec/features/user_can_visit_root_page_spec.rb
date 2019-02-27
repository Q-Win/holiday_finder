require 'rails_helper'

xfeature "As a visitor" do
  scenario "visit home page", :js do
    visit root_path

    expect(page).to have_content("Holiday Fun!")
  end
end
