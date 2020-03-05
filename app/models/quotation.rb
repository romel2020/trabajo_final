class Quotation < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :position
    belongs_to :document
  
  
end
