class HolidayFacade

  def initialize

  end

  def location_name
    @name
  end

  def search_for_a_theme(theme)
    holiday_service.
  end


  def today
    holiday_service.get_todays_holiday[:holidays]
  end

  def holiday_service
    service = HolidayService.new
  end
end
