class Document < ApplicationRecord
  has_many :quotations
  belongs_to :document, class_name: 'Document', optional: true, foreign_key: :document_id
  scope :base_status, -> { where(status_id: nil) }
end
