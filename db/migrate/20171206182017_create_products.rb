class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :weight
      t.integer :box_price
      t.integer :weekly_delivery_price

      t.timestamps
    end
  end
end
