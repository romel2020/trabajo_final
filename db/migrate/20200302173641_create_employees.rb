class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :rut
      t.string :name
      t.string :father_name
      t.string :mother_name
      t.string :date_ini
      t.string :nationality
      t.string :sexo
      t.string :address
      t.string :phone_fix
      t.string :phone
      t.string :email
      t.string :charges

      t.timestamps
    end
  end
end
