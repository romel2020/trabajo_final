class AddLaboralrelationToAfps < ActiveRecord::Migration[5.2]
  def change
    add_reference :afps, :laboralrelation, foreign_key: true
  end
end
