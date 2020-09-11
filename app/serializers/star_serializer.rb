class StarSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id
end
