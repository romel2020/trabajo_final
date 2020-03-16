class Employee < ApplicationRecord
    has_many :laboralrelation
    belongs_to :company
    belongs_to :user
    belongs_to :location

end
