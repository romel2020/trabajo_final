class AddReRemisionToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :location, foreign_key: true
  end
end
