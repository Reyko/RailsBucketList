class DestinationsController < ApplicationController
  before_filter :load_all_destinations, :only => :index
  before_filter :create_a_new_destination, :only => :index
  before_filter :load_a_destination, :only => :show



  def create
    # binding.pry

     @destination = Destination.new(allowed_params)
     if @destination.save
       # flash[:notice] = "Record Saved"

       respond_to do |format|
        format.html { redirect_to destination_path(@destination), :notice => "Record Saved"}
        format.js 
       end

       # redirect_to destination_path(@destination), :notice => "Record Saved"
     else
       render :new
     end

  end

  def new
    @destination = Destination.new
  end

  private
  def allowed_params
    params.require(:destination).permit(:name, :image_url)
  end

  def load_all_destinations
    @destinations = Destination.all
  end

  def create_a_new_destination
    @destination = Destination.new
  end

  def load_a_destination
    @destination = Destination.find(params[:id])
  end

end
