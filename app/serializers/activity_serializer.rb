class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :age_range, :duration
end
