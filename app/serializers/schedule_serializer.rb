class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :date, :time_of_day
  has_one :user
  has_one :activity
end
