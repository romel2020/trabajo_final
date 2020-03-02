class Quotation < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :status
    belongs_to :document
  
end
