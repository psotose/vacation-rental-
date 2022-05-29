class CreateCabinPics < ActiveRecord::Migration[5.2]
  def change
    create_table :cabin_pics do |t|
      t.string :pictures
      t.belongs_to :cabin, foreign_key: true

      t.timestamps
    end
  end
end
