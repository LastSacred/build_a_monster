class MonstersController < ApplicationController

  def index
    @monsters = Monster.imgs


    # @monster_images = @monsters.collect do |monster|
    #   monster.imgs
    # end
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
    @imgs = @monster.imgs
    @stats = @monster.stats
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
		if @monster.save
			redirect_to monster_path(@monster)
		else
			@heads = Head.all
			@arms = Arm.all
			@legs = Leg.all
			@torsos = Torso.all
			render :new
		end
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
