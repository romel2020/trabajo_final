ActiveAdmin.register Company do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :address, :contact, :phone, :location_id, :laboralrelation_id, :mutual_id
  #
  # or
  #
   permit_params do
     permitted = [:name, :address, :contact, :phone, :fantasyname, :companyrut, :contactrut]
    
     permitted
   end
  
end


