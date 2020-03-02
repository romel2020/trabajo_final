class AddAfpToLaboralrelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :laboralrelations, :afp, foreign_key: true
  end
end
