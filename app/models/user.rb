class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :quotations
         has_many :employees
         belongs_to :company


         def after_sign_in_path_for(resource)
          stored_location_for(resource) || quotations_index_path
        end

      

      end


