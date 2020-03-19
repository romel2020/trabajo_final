class AddTableToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :fantasyname, :string
    add_column :companies, :companyrut, :string
    add_column :companies, :contactrut, :string
  end
end
