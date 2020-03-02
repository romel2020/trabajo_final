class AddCompanyToLaboralrelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :laboralrelations, :company, foreign_key: true
  end
end
