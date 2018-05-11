class Country < ActiveRecord::Base
  has_many :attractions
  has_many :categories, through: :attractions


end
