class AddColumnColorToGood < ActiveRecord::Migration
  def change
    add_column :goods, :color, :string
  end
end
