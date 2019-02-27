class HolidayFacade

  def initialize

  end

  def search_for_a_theme(theme)
    all_holidays = holiday_service.get_holidays_for_year[:holidays].values.flatten

    all_holidays.find_all {|holiday| holiday[:name].include?(theme) }
  end


  def today
    holiday_service.get_todays_holiday[:holidays]
  end

  private

  def holiday_service
    service = HolidayService.new
  end

  def contains?

  end

end
