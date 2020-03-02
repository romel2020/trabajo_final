class Laboralrelation < ApplicationRecord
  belongs_to :company
  belongs_to :employee
  belongs_to :groupo
  belongs_to :afp

end
