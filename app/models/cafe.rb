class Cafe < ApplicationRecord
  belongs_to :user
  has_many :tables, dependent: :destroy
  has_many :bookings, through: :tables
  has_many :reviews, through: :bookings

  validates :name, :location, presence: true
  has_one_attached :photo

  has_many :favourites, as: :favouritable
  has_many :favourited_by_users, class_name:"User", through: :favourites, foreign_key: :favouritable_id

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def average_rating
    ratings = self.reviews.map do |review|
      review.rating
    end
    verdict = ratings.inject { |sum, el| sum + el }.to_f / ratings.size
    verdict.round(2)
  end

  def credits_range
    tables = self.tables
    credits_range = tables.map do |t|
      t.min_credits
    end

    min_credits = credits_range.min
    max_credits = credits_range.max

    if min_credits == max_credits
      cafe_credits = "#{min_credits}€/4h slot/table"
    else
      cafe_credits = "from #{min_credits}€ to #{max_credits}€ per 4h slot/table </br>(dependent on table size)"
    end
    cafe_credits
  end
end
