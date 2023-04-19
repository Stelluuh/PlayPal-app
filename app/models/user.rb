class User < ApplicationRecord
    has_secure_password

    has_many :schedules
    has_many :activities, through: :schedules
end
