class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :date, :time_of_day, presence: true
end
