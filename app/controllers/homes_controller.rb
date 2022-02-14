class HomesController < ApplicationController
  
  def top
  end
    
  def index
    @lists = List.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
