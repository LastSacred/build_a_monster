class MonstersController < ApplicationController

  def index

  end

  def stats

  end

  def new
		@monster = Monster.new
		@heads = Head.all
		@arms = Arm.all
		@legs = Leg.all
		@torsos = Torso.all
  end

  def show

  end

  def edit
		@monster = Monster.find(params[:id])
  end

  def create
		@monster = Monster.new(monster_params)
		@monster.save
		redirect_to monster_path(@monster)
  end

  def update

  end

  def destroy

  end

	private

	def monster_params
		params.require(:monster).permit(:head, :torso, :leg, :arm, :head_id, :torso_id, :leg_id, :arm_id)
	end

end
