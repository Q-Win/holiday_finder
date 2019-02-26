class WelcomeController < ApplicationController
  def index
    facade = HolidayFacade.new
    @todays_holidays = facade.today
  end
end
