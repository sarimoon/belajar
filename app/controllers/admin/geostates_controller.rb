class Admin::GeostatesController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  #before_action :set_geostate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @geostates = Geostate.all
    respond_with(@geostates)
  end

  def show
    respond_with(@geostate)
  end

  def new
    @geostate = Geostate.new
    respond_with(@geostate)
  end

  def edit
  end

  def create
    @geostate = Geostate.new(geostate_params)
    @geostate.save
    respond_with(@geostate)
  end

  def update
    @geostate.update(geostate_params)
    respond_with(@geostate)
  end

  def destroy
    @geostate.destroy
    respond_with(@geostate)
  end

  private
    def set_geostate
      @geostate = Geostate.find(params[:id])
    end

    def geostate_params
      params.require(:geostate).permit(:country_id, :short, :name)
    end
end
