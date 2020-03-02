class AddLaboralrelationToHealths < ActiveRecord::Migration[5.2]
  def change
    add_reference :healths, :laboralrelation, foreign_key: true
  end
end
