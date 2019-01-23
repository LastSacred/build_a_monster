class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def stats
    @stats = Monster.stats
  end

  def new
		@monster = Monster.new
		@heads = Head.all
		@arms = Arm.all
		@legs = Leg.all
		@torsos = Torso.all
  end

  def show
    @monster = Monster.find(params[:id])
<<<<<<< HEAD
		@imgs = @monster.imgs
=======
    @imgs = @monster.imgs
    @stats = @monster.stats
>>>>>>> cf05cb6031b52deab22ccbacc1ce42cf98fa0339
  end

  def edit
		@monster = Monster.find(params[:id])
    @heads = Head.all
    @arms = Arm.all
    @legs = Leg.all
    @torsos = Torso.all
  end

  def create
		@monster = Monster.new(monster_params)
		@monster.save
		redirect_to monster_path(@monster)
  end

  def update
    @monster = Monster.find(params[:id])
    @monster.update(monster_params)
    redirect_to monster_path(@monster)
  end

  def destroy

  end

	private

	def monster_params
		params.require(:monster).permit(:name, :head, :torso, :leg, :arm, :head_id, :torso_id, :leg_id, :arm_id)
	end

end
