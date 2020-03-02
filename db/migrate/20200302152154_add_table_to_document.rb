class AddTableToDocument < ActiveRecord::Migration[5.2]
  def change
    add_reference :documents, :quotation, foreign_key: true
  end
end
