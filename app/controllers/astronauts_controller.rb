class AstronautsController < ApplicationController

  def index
    @astronauts = Astronauts.all
  end

end
