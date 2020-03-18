json.extract! payment, :id, :date_ini, :quotes, :date_fini, :mount, :description, :created_at, :updated_at
json.url payment_url(payment, format: :json)
