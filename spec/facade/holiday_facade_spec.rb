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


end
