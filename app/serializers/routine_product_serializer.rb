class RoutineProductSerializer < ActiveModel::Serializer
  attributes :id, :routine_id
  has_one :product
end
