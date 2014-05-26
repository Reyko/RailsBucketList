class ToDoItem < ActiveRecord::Base
  validates :title, :presence => true
  validates :location, :presence => true

  belongs_to :destination

  geocoded_by :geocoder_input

  after_validation :geocode

  def geocoder_input
    "#{location} #{destination.name}"
  end
end
