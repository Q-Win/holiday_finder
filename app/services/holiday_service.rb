class HolidayService

  def initialize
    time = Time.now
    @day = time.day
    @month = time.month
    @year = time.year
  end

  def get_todays_holiday
    response = conn.get "?country=US&year=#{@year}&day=#{@day}&month=#{@month}"

      JSON.parse(response.body, symbolize_names: true)
  end

  def get_holidays_for_year
    response = conn.get "?country=US&year=2019"

    JSON.parse(response.body, symbolize_names: true)
  end


private

  def conn
    Faraday.new(url: 'https://holidayapi.pl/v1/holidays')
  end

end
