class AddCreditToLaboralrelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :laboralrelations, :credit, foreign_key: true
  end
end
