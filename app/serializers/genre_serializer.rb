class GenreSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :name
end
