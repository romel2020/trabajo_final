class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :phone
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
