class CreateLegs < ActiveRecord::Migration[5.2]
  def change
    create_table :legs do |t|
      t.string :name
      t.string :img
      t.integer :weight
      t.integer :power
      t.integer :defense
      t.integer :speed

      t.timestamps
    end
  end
end
