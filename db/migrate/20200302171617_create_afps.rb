class CreateAfps < ActiveRecord::Migration[5.2]
  def change
    create_table :afps do |t|
      t.string :name
      t.float :comision
      t.float :desc

      t.timestamps
    end
  end
end
