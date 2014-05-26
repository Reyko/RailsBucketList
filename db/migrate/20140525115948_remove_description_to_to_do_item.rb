class RemoveDescriptionToToDoItem < ActiveRecord::Migration
  def change
    remove_column :to_do_items, :description, :text
  end
end
