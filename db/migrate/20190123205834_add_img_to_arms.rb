class AddImgToArms < ActiveRecord::Migration[5.2]
  def change
    add_column :arms, :img, :string
  end
end
