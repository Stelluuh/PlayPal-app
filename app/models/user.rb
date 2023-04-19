class User < ApplicationRecord
    has_secure_password
    validates :username, :password, :password_confirmation, presence: true

    has_many :schedules
    has_many :activities, through: :schedules
end
