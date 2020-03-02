class AddLaboralrelationToGroupos < ActiveRecord::Migration[5.2]
  def change
    add_reference :groupos, :laboralrelation, foreign_key: true
  end
end
