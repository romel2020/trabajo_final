class AddMutualToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_reference :companies, :mutual, foreign_key: true
  end
end
