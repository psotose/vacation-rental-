ActiveAdmin.register Reservation do
  controller do
    nested_belongs_to :cabin, optional: true
  end
  permit_params :start_time, :end_time, :cabin_id, :name
  
end
