class GochiesController < ApplicationController
  def new
  	@gochi = Gochies.new
  end

  def index
  	@gochies = Gochies.find
  end

  def complete
  end

  def show
  end
end
