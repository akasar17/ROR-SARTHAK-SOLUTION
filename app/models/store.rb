class Store < ApplicationRecord
  has_many :ratings, dependent: :destroy

  validates :name, length: { in: 20..60 }
  validates :address, length: { maximum: 400 }

  def calculate_average_rating
    ratings.average(:score).to_f.round(2)
  end
end
