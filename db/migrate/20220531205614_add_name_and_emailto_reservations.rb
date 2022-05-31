class AddNameAndEmailtoReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :name, :string
    add_column :reservations, :email, :string
  end
end
