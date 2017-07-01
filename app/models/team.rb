class Team < ApplicationRecord
  has_many :players

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :image_url, length: { maximum: 255 }, allow_blank: true

end
