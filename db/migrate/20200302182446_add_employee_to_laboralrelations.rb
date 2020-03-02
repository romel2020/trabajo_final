class AddEmployeeToLaboralrelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :laboralrelations, :employee, foreign_key: true
  end
end
