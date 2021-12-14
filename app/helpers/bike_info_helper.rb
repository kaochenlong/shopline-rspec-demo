module BikeInfoHelper
  def site_list(bikes)
    bikes.map { |bike| "#{bike[:site_name]} (#{bike[:bike_amount]})" }
  end
end
