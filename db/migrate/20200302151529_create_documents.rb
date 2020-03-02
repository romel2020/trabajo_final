class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
