class AddStatusToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_column :quotations, :status, :boolean, default: false
  end
end
