class Quotation < ApplicationRecord
    belongs_to :user, optional: true
    has_many :documents
    has_many :statues
end
