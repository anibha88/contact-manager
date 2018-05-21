class DropNamesTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :names
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
