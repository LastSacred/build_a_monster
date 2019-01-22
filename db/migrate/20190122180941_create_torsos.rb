class CreateTorsos < ActiveRecord::Migration[5.2]
  def change
    create_table :torsos do |t|
      t.string :name
      t.string :img
      t.integer :weight
      t.integer :power
      t.integer :defense
      t.boolean :dadbod

      t.timestamps
    end
  end
end
