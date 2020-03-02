class AddNameToStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :statuses, :name, :string
  end
end
