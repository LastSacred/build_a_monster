class Monster < ApplicationRecord
  belongs_to :head
  belongs_to :torso
  belongs_to :leg
  belongs_to :arm

  validates :name, uniqueness: true

  @@attrs = [
    :power,
    :defense,
    :weight,
    :speed,
    :cuteness,
    :intelligence,
    :dateability
  ]

  def power
    [self.head.power, self.torso.power, self.arm.power, self.leg.power].sum
  end

  def defense
    [self.head.defense, self.torso.defense, self.arm.defense, self.leg.defense].mean.to_i
  end

  def weight
    [self.head.weight, self.torso.weight, self.arm.weight, self.leg.weight].sum
  end

  def speed
    body_weight = self.weight - self.leg.weight
    overweight = ((body_weight / self.leg.capacity) - 1)
    overweight = 0 if overweight < 0
    reduction = overweight * 10
    (self.leg.speed - reduction).to_i
  end

  def cuteness
    [self.head.cuteness, self.arm.cuteness].sum
  end

  def intelligence
    self.head.intelligence
  end

  def dadbod?
    self.torso.dadbod
  end

  def dateability
    dateability = self.cuteness * self.intelligence
    if self.dadbod?
      if dateability > 180
        dateability += 20
      else
        dateability -= 20
      end
    end
    dateability
  end

  def stats
    stats = {}

    @@attrs.each do |attr|
      stats[attr] = self.public_send(attr)
    end
  end

  def imgs
    imgs = {}
    imgs[:head] = self.head.img
    imgs[:torso] = self.torso.img
    imgs[:l_arm] = self.arm.limg
    imgs[:r_arm] = self.arm.rimg
    imgs[:leg] = self.leg.img
  end

  def self.avg(attr)
    self.all.collect { |monster| monster.public_send(attr) }.mean.to_i
  end

  def self.highest(attr)
    self.all.max_by {|monster| monster.public_send(attr)}
  end

  def self.lowest(attr)
    self.all.min_by {|monster| monster.public_send(attr)}
  end

  def self.stats
    stats = {}

    @@attrs.each do |attr|
      stats[attr] = {}
      stats[attr][:average] = self.avg(attr)
      stats[attr][:highest] = self.highest(attr)
      stats[attr][:lowest] = self.lowest(attr)
    end
    stats
  end

end
