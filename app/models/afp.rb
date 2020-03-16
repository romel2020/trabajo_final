class Afp < ApplicationRecord
    has_many :laboralrelation, dependent: :destroy
    belongs_to :afp, class_name: 'Afp', optional: true, foreign_key: :afp_id
  #  scope :base_afp, -> { where(afp_id: nil) }

  #  def all_parents
#     AFP.where(id: afp.heath_id).flat_map do |jubile|
#       jubile.all_parents << jubile
#     end
#  end 
end
