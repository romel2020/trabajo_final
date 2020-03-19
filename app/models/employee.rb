class Employee < ApplicationRecord
    has_many :laboralrelation
    belongs_to :company
    belongs_to :user
    belongs_to :location
    paginates_per 5
end
