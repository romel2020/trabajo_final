class Position < ApplicationRecord
  has_many :quotations
  belongs_to :position, class_name: 'Position', optional: true, foreign_key: :position_id
  scope :base_position, -> { where(position_id: nil) }

  # def all_parents
  #   Status.where<(id: self.status_id).flat_map do |estate|
  #     estate.all_parents << estate
  #   end
  # end
end
