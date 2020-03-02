class AddFilesToCredit < ActiveRecord::Migration[5.2]
  def change
    add_column :credits, :amount, :string
    add_column :credits, :description, :string
  end
end
