class AddNameToDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :name, :string
  end
end
