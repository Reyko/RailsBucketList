class Destination < ActiveRecord::Base
  validates :name, :presence => true
  has_many :to_do_items


  geocoded_by :name
  after_validation :geocode

end
