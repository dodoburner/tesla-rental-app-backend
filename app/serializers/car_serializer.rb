class CarSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :brand, :top_speed, :zero_to_sixty, :range, :engine_type, :transmission, :rent_per_day,
             :created_at, :updated_at

  has_many :reservations
end
