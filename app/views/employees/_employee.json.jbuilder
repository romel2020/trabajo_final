json.extract! employee, :id, :rut, :name, :father_name, :mother_name, :date_ini, :nationality, :sexo, :address, :phone_fix, :phone, :email, :charges, :created_at, :updated_at
json.url employee_url(employee, format: :json)
