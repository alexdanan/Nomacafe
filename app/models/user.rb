class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_target

  has_many :bookings, dependent: :destroy
  has_many :credits, dependent: :destroy
  has_one :cafe, dependent: :destroy
  has_one_attached :photo
  validates :nomacafe_type, presence: true, inclusion: { in: ["cafe", "nomad"] }

  has_many :favourites
  has_many :favourite_cafes, source: :favouritable, source_type: "Cafe", through: :favourites, foreign_key: :favouritable_id
  has_many :favourite_users, source: :favouritable, source_type: "User", through: :favourites, foreign_key: :favouritable_id

  has_many :favourites_as_favouritable, class_name: "Favourite", as: :favouritable
  has_many :orders

  def is_cafe_owner?
    cafe.present?
  end

  def follows?(favouritable)
    favourites.where(favouritable: favouritable, user: self).any?
  end
end
