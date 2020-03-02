class AddTableToQuotation < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotations, :document, foreign_key: true
  end
end
