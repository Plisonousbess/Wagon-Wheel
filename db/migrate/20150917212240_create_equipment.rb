class CreateEquipment < ActiveRecord::Migration
  def change
  	create_table :equipment do |t|
      t.integer :user_id
  		t.string :typ
  		t.string :make
  		t.text :info

  		t.timestamps null: false
  	end
  end
end
