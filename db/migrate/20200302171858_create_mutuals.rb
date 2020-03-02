class CreateMutuals < ActiveRecord::Migration[5.2]
  def change
    create_table :mutuals do |t|
      t.string :name
      t.string :comision
      t.string :desc

      t.timestamps
    end
  end
end
