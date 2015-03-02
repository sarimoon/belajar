class Admin::GeodistrictsController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  #before_action :set_geodistrict, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @geodistricts = Geodistrict.all
    respond_with(@geodistricts)
  end

  def show
    respond_with(@geodistrict)
  end

  def new
    @geodistrict = Geodistrict.new
    respond_with(@geodistrict)
  end

  def edit
  end

  def create
    @geodistrict = Geodistrict.new(geodistrict_params)
    @geodistrict.save
    respond_with(@geodistrict)
  end

  def update
    @geodistrict.update(geodistrict_params)
    respond_with(@geodistrict)
  end

  def destroy
    @geodistrict.destroy
    respond_with(@geodistrict)
  end

  private
    def set_geodistrict
      @geodistrict = Geodistrict.find(params[:id])
    end

    def geodistrict_params
      params.require(:geodistrict).permit(:short, :name)
    end
end
