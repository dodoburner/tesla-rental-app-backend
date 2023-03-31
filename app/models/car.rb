class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, length: { minimum: MIN_NUM, maximum: MAX_LENGTH }
  validates :brand, presence: true, length: { minimum: MIN_NUM, maximum: MAX_LENGTH }
  validates :image, presence: true, length: { minimum: MIN_NUM }
end
