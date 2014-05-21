class DestinationsController < ApplicationController

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

end
