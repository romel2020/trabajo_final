class AddHealthToLaboralrelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :laboralrelations, :health, foreign_key: true
  end
end
