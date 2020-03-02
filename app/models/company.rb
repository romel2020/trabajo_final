class Company < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :mutual
  belongs_to :compensationbox
 # belongs_to :location
end
