class Activity < ApplicationRecord
    has_many :schedules, dependent: :destroy
    has_many :users, through: :schedules

    validates :name, :description, :age_range, :duration, presence: true
    validates :age_range, :duration, numericality: true

end
