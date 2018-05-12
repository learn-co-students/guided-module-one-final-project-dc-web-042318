class Category < ActiveRecord::Base
  has_many :attractions
  has_many :countries, through: :attractions
end
