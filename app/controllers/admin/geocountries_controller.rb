class Admin::GeocountriesController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  #before_action :set_geocountry, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @geocountries = Geocountry.all
    respond_with(@geocountries)
  end

  def show
    respond_with(@geocountry)
  end

  def new
    @geocountry = Geocountry.new
    respond_with(@geocountry)
  end

  def edit
  end

  def create
    @geocountry = Geocountry.new(geocountry_params)
    @geocountry.save
    respond_with(@geocountry)
  end

  def update
    @geocountry.update(geocountry_params)
    respond_with(@geocountry)
  end

  def destroy
    @geocountry.destroy
    respond_with(@geocountry)
  end

  private
    def set_geocountry
      @geocountry = Geocountry.find(params[:id])
    end

    def geocountry_params
	  params.require(:geocountry).permit(:short, :name)
    end
end
