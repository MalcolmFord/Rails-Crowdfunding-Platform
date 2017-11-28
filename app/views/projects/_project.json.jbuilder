json.extract! project, :id, :name, :description, :funding_goal, :start_date, :end_date, :user_id, :project_type_id, :total_amount_raised, :created_at, :updated_at
json.url project_url(project, format: :json)
