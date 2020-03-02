class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
