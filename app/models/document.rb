class Document < ApplicationRecord
    belongs_to :quotation, optional: true
end
