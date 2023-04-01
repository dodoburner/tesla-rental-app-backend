class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy

  MAX_LENGTH = 250
  MIN_NUM = 1
  MAX_NUM = 100_000_000

  validates :name, presence: true, length: { minimum: MIN_NUM, maximum: MAX_LENGTH }
  validates :brand, presence: true, length: { minimum: MIN_NUM, maximum: MAX_LENGTH }
  validates :image, presence: true, length: { minimum: MIN_NUM }

  enum engine_type: %i[electric hybrid petrol diesel gas]

end
