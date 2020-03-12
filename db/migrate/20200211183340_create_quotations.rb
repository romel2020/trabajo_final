class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
    t.string :name 
    t.string :last_name
    t.string :phone
    t.string :email
    t.string :profile
    t.string :compañy_size
    t.string :doc_month
    t.string :help_you

      t.timestamps
    end
  end
end
