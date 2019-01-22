class CreateHeads < ActiveRecord::Migration[5.2]
  def change
    create_table :heads do |t|
      t.string :name
      t.string :img
      t.integer :weight
      t.integer :power
      t.integer :defense
      t.integer :cuteness
      t.integer :intelligence

      t.timestamps
    end
  end
end
