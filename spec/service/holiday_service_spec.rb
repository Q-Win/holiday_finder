require 'rails_helper'

RSpec.describe HolidayService do

  it 'it exists' do
    service = HolidayService.new

    expect(service).to be_a(HolidayService)
  end

  it '.get_holidays_for_year' do
    service = HolidayService.new
    holidays = service.get_holidays_for_year
    binding.pry 
    expect(holidays).to eq("+11234567891")
  end

  it '.get_todays_holiday' do
    service = HolidayService.new
    holiday = service.get_todays_holiday

    expect(holiday[:holidays]).to be_a(Array)
  end

end
