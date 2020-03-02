class AddStatusToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotations, :status, foreign_key: true
  end
end
