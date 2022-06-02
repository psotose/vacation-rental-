ActiveAdmin.register Cabin do

  permit_params :name

  index do
    selectable_column
      column "Cabaña", :name do |cabin|
      link_to cabin.name, admin_cabin_path(cabin)
    end  
  
    column "Reservas", :reservas_de_la_cabaña do |cabin|
      link_to cabin.reservations.count, admin_cabin_reservations_path(cabin)
    end
  end  
  member_action :reservations do
    @reservations = Cabin.find(params[:id]).reservations
  end
  
end
