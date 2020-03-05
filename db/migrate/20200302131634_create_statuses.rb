class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.references :position, foreign_key: true

      t.timestamps
    end
  end
end
