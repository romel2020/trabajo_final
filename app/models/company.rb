class Company < ApplicationRecord
  has_many :users
  has_many :employees
  # belongs_to :mutual
 # belongs_to :compensationbox
 # belongs_to :location
end
