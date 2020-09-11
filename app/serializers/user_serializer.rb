class UserSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email
  has_many :followed_movies, serializer: :movie
  has_many :followed_genres, serializer: :genre
  has_many :followed_stars, serializer: :star
end
