class AddLaboralrelationToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_reference :companies, :laboralrelation, foreign_key: true
  end
end
