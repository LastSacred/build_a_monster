class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def stats

  end

  def new

  end

  def show
    @monster = Monster.find(params[:id])
  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

end
