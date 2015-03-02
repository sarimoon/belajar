class Admin::ReligionsController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!

  respond_to :html

  def index
    @religions = Religion.all
    respond_with(@religions)
  end

  def show
    respond_with(@religion)
  end

  def new
    @religion = Religion.new
    respond_with(@religion)
  end

  def edit
  end

  def create
    @religion = Religion.new(religion_params)
    @religion.save
    respond_with(@religion)
  end

  def update
    @religion.update(religion_params)
    respond_with(@religion)
  end

  def destroy
    @religion.destroy
    respond_with(@religion)
  end

  private
    def set_religion
      @religion = Religion.find(params[:id])
    end

    def religion_params
      #params[:religion]
	  params.require(:religion).permit(:name)
    end
end
