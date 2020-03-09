class HomesController < ApplicationController
  def index
    render layout: "main"
    @quotations = Quotation.all
  end

  def intro
    render layout: "intro"
  end

  def planes
    render layout: "about"
  end

  def about
    render layout: "about"
  end

  def new

  end

end
