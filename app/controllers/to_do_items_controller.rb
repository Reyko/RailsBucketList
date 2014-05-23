class ToDoItemsController < ApplicationController
  
  before_filter :to_do_params, :only => :destination_to_do_items

  def create
    binding.pry
    @to_do_item = ToDoItem.new(to_do_params)
    

    

    params = to_do_params << @destination
    @toDo = Destination.new(to_do_params)
    @toDo.save!
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end





  def to_do_params
    params.require(:to_do_items).permit(:destination_id,:title,:description)
  end

end
