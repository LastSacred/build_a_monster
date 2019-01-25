class MonstersController < ApplicationController

  def index
    @monsters = Monster.imgs
		@attributes = ["power", "defense", "weight", "speed", "cuteness", "dateability"]
		@prompt = "Select an Attribute"
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
		@attributes = ["power", "defense", "weight", "speed", "cuteness", "dateability"]
		@attributes.unshift(@attributes.delete(params[:attr]))
		@prompt = nil
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
      flash[:hype] = true
			redirect_to monster_path(@monster), hype: true
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
    redirect_to controller: 'show', action: 'get', id: @monster.id, hype: 'true'
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to monsters_path
  end

	private

	def monster_params
		params.require(:monster).permit(:name, :head, :torso, :leg, :arm, :head_id, :torso_id, :leg_id, :arm_id)
	end

end
