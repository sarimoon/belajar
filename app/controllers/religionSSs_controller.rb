class ReligionsController < ApplicationController
  def index
    @religions = Religion.all
  end
end
