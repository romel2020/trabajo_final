class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :date_ini
      t.string :quotes
      t.string :date_fini
      t.string :mount
      t.string :description

      t.timestamps
    end
  end
end
