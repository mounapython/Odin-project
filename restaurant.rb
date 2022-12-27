class Restaurant
  attr_reader :city, :name, :average_rating

  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0
    @array = []
  end

  def rate(new_rate)
    @array << new_rate
    @average_rating = @array.sum / @array.size
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |restaurant| restaurant.city == city }
  end
end
