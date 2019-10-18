# frozen_string_literal: true

class CreateWhiskeys < ActiveRecord::Migration[5.2]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :variety
      t.string :distiller
      t.string :region
      t.string :age
      t.string :primary_taste
      t.float :price
      t.datetime :tasting_date
      t.string :description

      t.timestamps
    end
  end
end
