class ToDoItemsController < ApplicationController
  
  before_filter :to_do_params, :only => :destination_to_do_items

  def create
    @to_do_item = ToDoItem.new(to_do_params)
        # binding.pry
    @to_do_item.save!
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
    params.require(:to_do_item).permit(:destination_id,:title,:location)
  end

end
