class ScenarioSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :order, :active, :key
end
