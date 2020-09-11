class MovieSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :year, :poster
  belongs_to :genre
  has_many :stars
end
