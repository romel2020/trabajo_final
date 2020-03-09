class Document < ApplicationRecord
  has_many :quotations, dependent: :destroy
  belongs_to :document, class_name: 'Document', optional: true, foreign_key: :document_id
  
end
