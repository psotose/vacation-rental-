class CreateCabinets < ActiveRecord::Migration[5.2]
  def change
    create_table :cabinets do |t|
      t.string :name
      t.text :description
      t.decimal :price, :decimal, precision: 15, scale: 2

      t.timestamps
    end
  end
end
