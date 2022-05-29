class CreateCabins < ActiveRecord::Migration[5.2]
  def change
    create_table :cabins do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 12, scale: 2

      t.timestamps
    end
  end
end
