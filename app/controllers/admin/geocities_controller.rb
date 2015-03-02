class Admin::GeocitiesController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  #before_action :set_geocity, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @geocities = Geocity.all
    respond_with(@geocities)
  end

  def show
    respond_with(@geocity)
  end

  def new
    @geocity = Geocity.new
    respond_with(@geocity)
  end

  def edit
  end

  def create
    @geocity = Geocity.new(geocity_params)
    @geocity.save
    respond_with(@geocity)
  end

  def update
    @geocity.update(geocity_params)
    respond_with(@geocity)
  end

  def destroy
    @geocity.destroy
    respond_with(@geocity)
  end

  private
    def set_geocity
      @geocity = Geocity.find(params[:id])
    end

    def geocity_params
      params.require(:geocity).permit(:short, :name)
    end
end
