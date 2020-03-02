class CreateGroupos < ActiveRecord::Migration[5.2]
  def change
    create_table :groupos do |t|
      t.string :cargo

      t.timestamps
    end
  end
end
