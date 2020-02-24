class Status < ApplicationRecord
    belongs_to :quotation, optional: true
end
