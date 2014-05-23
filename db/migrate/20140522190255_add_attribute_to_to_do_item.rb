class AddAttributeToToDoItem < ActiveRecord::Migration
  def change
    add_column :to_do_items, :description, :text
  end
end
