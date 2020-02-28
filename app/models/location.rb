class Location < ApplicationRecord
=begin
  belongs_to :city, class_name: 'Location', optional: true, foreign_key: :location_id
  has_many :communes, class_name: 'Location', dependent: :destroy
  scope :base_location, -> { where(location_id: nil) }

  def all_children
    communes.flat_map do |commune|
      commune.all_children << commune
    end
  end
  def all_parents
    Location.where(id: self.location_id).flat_map do |city|
      city.all_parents << city
    end
  end
=end
end

