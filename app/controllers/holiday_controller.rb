class HolidayController < ApplicationController
  def index
    facade = HolidayFacade.new
    @theme = params["theme"]
    @holidays = facade.search_for_a_theme(params["theme"])

  end
end
