class MonstersController < ApplicationController

  def index
    @monsters = Monster.imgs
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

  def order
    @monsters = Monster.imgs.sort_by {|monster, values| -values[:object].public_send(params[:attr])}
    render :index
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
