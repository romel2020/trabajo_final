class Document < ApplicationRecord
  has_many :quotations
  belongs_to :document, class_name: 'Document', optional: true, foreign_key: :document_id
  
end
