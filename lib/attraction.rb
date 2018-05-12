class Attraction < ActiveRecord::Base
  belongs_to :country
  belongs_to :category

  def country_has(country)
    self.country = Country.find_or_create_by(name: "country")
  end

end
