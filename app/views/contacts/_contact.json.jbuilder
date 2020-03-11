json.extract! contact, :id, :name, :last_name, :email, :phone, :consult, :created_at, :updated_at
json.url contact_url(contact, format: :json)
