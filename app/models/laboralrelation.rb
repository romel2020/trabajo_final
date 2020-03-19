class Laboralrelation < ApplicationRecord
 
  belongs_to :employee
  #belongs_to :groupo
  belongs_to :afp
  belongs_to :health
  paginates_per 5
end
