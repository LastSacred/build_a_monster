class CreateArms < ActiveRecord::Migration[5.2]
  def change
    create_table :arms do |t|
      t.string :name
      t.string :limg
      t.string :rimg
      t.integer :weight
      t.integer :power
      t.integer :defense
      t.integer :cuteness

      t.timestamps
    end
  end
end
