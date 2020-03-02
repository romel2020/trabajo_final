class Status < ApplicationRecord
  has_many :quotations
  belongs_to :status, class_name: 'Status', optional: true, foreign_key: :status_id
  scope :base_status, -> { where(status_id: nil) }

  # def all_parents
  #   Status.where<(id: self.status_id).flat_map do |estate|
  #     estate.all_parents << estate
  #   end
  # end
end
