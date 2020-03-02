class CreateLaboralrelations < ActiveRecord::Migration[5.2]
  def change
    create_table :laboralrelations do |t|
      t.boolean :undefined
      t.string :date_ini
      t.string :date_finish
      t.string :base_salary
      t.string :status

      t.timestamps
    end
  end
end
