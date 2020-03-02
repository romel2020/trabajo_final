class CreateCompensationboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :compensationboxes do |t|
      t.string :name
      t.string :comision
      t.string :desc

      t.timestamps
    end
  end
end
