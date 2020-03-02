class AddLaboralrelationToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :laboralrelation, foreign_key: true
  end
end
