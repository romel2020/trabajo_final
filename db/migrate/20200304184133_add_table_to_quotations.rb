class AddTableToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotations, :position, foreign_key: true
  end
end
