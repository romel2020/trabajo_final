class HomesController < ApplicationController
  def index
    render layout: "main"
    @quotations = Quotation.all
    
  end

  def intro
    render layout: "intro"
  end

  def tarot
    render layout: "tarot"
  end

  def about
    render layout: "about"
  end

  def new

  end

end
