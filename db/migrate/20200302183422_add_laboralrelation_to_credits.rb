class AddLaboralrelationToCredits < ActiveRecord::Migration[5.2]
  def change
    add_reference :credits, :laboralrelation, foreign_key: true
  end
end
