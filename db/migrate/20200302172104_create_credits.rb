class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.string :date_ini
      t.string :quotes
      t.string :date_finish

      t.timestamps
    end
  end
end
