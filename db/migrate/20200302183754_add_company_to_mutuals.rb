class AddCompanyToMutuals < ActiveRecord::Migration[5.2]
  def change
    add_reference :mutuals, :company, foreign_key: true
  end
end
