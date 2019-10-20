class ChangeTypeToVariety < ActiveRecord::Migration[5.2]
  def change
    rename_column :whiskeys, :type, :variety
  end
end
