class Admin::GeocountriesController < ApplicationController
  def index
    @geocountries = Geocountry.all
  end
end
