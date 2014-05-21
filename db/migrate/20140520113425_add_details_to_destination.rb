class AddDetailsToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :name, :string
  end
end
