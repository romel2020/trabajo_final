class Afp < ApplicationRecord
    has_many :laboralrelation, dependent: :destroy
    belongs_to :afp, class_name: 'Afp', optional: true, foreign_key: :afp_id
   
end
