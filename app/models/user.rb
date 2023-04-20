class User < ApplicationRecord
    has_secure_password
    
    has_many :schedules
    has_many :activities, through: :schedules
   
    validates :name, :username, :password, :password_confirmation, presence: true
    validates :username, uniqueness: true
end
