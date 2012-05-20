class WelcomeController < ApplicationController
  def index
    @experiences = Experience.all.order_by('votes.point'=>:desc)
  end

  def styles

  end
end