class RemoveDistillerDescriptionTastingdateFromWhiskeys < ActiveRecord::Migration[5.2]
  def change
    remove_column :whiskeys, :distiller, :string
    remove_column :whiskeys, :tasting_date, :datetime
    remove_column :whiskeys, :description, :string
  end
end
