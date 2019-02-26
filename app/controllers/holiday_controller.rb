class HolidayController < ApplicationController
  def index
    facade = HolidayFacade.new
    @theme = params["theme"].titleize
    @holidays = facade.search_for_a_theme(@theme)

  end
end
