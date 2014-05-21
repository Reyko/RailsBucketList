class DestinationsController < ApplicationController
  before_filter :load_all_destinations, :only => :index
  before_filter :load_a_destination, :only => :show


  def create
    # binding.pry

     @destination = Destination.new(allowed_params)
     if @destination.save
       # flash[:notice] = "Record Saved"
       redirect_to destination_path(@destination), :notice => "Record Saved"
     else
       render :new
     end

  end

  def new
    @destination = Destination.new
  end

  private
  def allowed_params
    params.require(:destination).permit(:name)
  end

  def load_all_destinations
    @destinations = Destination.all
  end

  def load_a_destination
    @destination = Destination.find(params[:id])
  end

end
