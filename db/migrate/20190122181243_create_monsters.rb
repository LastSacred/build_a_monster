class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.references :head, foreign_key: true
      t.references :torso, foreign_key: true
      t.references :leg, foreign_key: true
      t.references :arm, foreign_key: true

      t.timestamps
    end
  end
end
