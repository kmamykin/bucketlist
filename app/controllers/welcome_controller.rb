class WelcomeController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def styles

  end
end