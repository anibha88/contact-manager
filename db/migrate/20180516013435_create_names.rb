class CreateNames < ActiveRecord::Migration[5.1]
  def change
    create_table :names do |t|
      t.string :company
      t.string :email
      t.string :phone
      t.string :address
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
