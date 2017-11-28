json.extract! payment_type, :id, :method, :card_number, :user_id, :created_at, :updated_at
json.url payment_type_url(payment_type, format: :json)
