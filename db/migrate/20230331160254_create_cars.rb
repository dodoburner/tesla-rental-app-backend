class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.string :image
      t.integer :top_speed
      t.float :zero_to_sixty
      t.integer :range
      t.string :type
      t.string :transmission
      t.integer :rent_per_day

      t.timestamps
    end
  end
end
