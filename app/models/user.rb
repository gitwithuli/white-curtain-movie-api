class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true

  has_many :follows
  has_many :followed_movies, through: :follows, source: :followable, source_type: "Movie"
  has_many :followed_genres, through: :follows, source: :followable, source_type: "Genre"
  has_many :followed_stars, through: :follows, source: :followable, source_type: "Star"
end
