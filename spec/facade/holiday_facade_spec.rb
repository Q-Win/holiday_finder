require 'rails_helper'

RSpec.describe HolidayFacade do

  it 'it exists' do
    service = HolidayFacade.new

    expect(service).to be_a(HolidayFacade)
  end

  it '.today' do
    facade = HolidayFacade.new
    today = facade.today

    expect(today).to be_a(Array)
  end

  it '.search_for_a_theme' do
    facade = HolidayFacade.new
    theme_results = facade.search_for_a_theme("day")

    expect(theme_results).to be_a(Array)
  end


end
