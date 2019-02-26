class HolidayController < ApplicationController
  def index
    facade = HolidayFacade.new
    binding.pry
  end
end
