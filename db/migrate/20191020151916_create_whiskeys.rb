class CreateWhiskeys < ActiveRecord::Migration[5.2]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :type
      t.string :region
      t.integer :age
      t.string :taste
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
