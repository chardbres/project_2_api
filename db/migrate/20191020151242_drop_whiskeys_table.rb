class DropWhiskeysTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :whiskeys
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
