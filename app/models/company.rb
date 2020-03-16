class Company < ApplicationRecord
  has_many :users
  has_many :employees
  has_many :laboralrelations
 # belongs_to :mutual
 # belongs_to :compensationbox
 # belongs_to :location
end
