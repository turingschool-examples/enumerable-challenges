class DailyRevenue
  def baseline(revenues)
    revenues.map do |revenue|
      revenue + 25
    end
  end
end