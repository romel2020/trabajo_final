class Health < ApplicationRecord
    has_many :laboralrelation, dependent: :destroy
    belongs_to :health, class_name: 'Health', optional: true, foreign_key: :health_id
 
end
