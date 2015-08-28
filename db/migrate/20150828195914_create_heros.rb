class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :name
      t.string :ability1
      t.string :ability2
      t.string :ability3
      t.string :ability4
      t.string :ability5
      t.string :ability6
      t.integer :str
      t.float :str_gain
      t.integer :agi
      t.float :agi_gain
      t.integer :intel
      t.float :intel_gain
      t.integer :move_speed
      t.string :sight_range
      t.integer :armor
      t.float :base_attack_time
      t.string :damage
      t.float :attack_point

      t.timestamps null: false
    end
  end
end
