class Health < ApplicationRecord
    has_many :laboralrelation, dependent: :destroy
    belongs_to :health, class_name: 'Health', optional: true, foreign_key: :health_id
  #   scope :base_health, -> { where(healt_id: nil) }

  #  def all_parents
  #   Health.where(id: self.heath_id).flat_map do |salud|
  #     salud.all_parents << salud
  #   end
  # end
end
