class CreateEquipment < ActiveRecord::Migration
  def change
  	create_table :equipment do |t|
      t.integer :user_id
  		t.string :typ
  		t.integer :year
  		t.string :make
  		t.text :info

  		t.timestamps
  	end
  end
end
