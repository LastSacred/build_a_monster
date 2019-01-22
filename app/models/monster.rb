class Monster < ApplicationRecord
  belongs_to :head
  belongs_to :torso
  belongs_to :leg
  belongs_to :arm
end
