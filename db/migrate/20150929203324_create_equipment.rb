class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :typ
      t.string :make
      t.text :info
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
