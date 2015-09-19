class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.text :addrress
      t.text :comment

      t.timestamps null: false
    end
  end
end
