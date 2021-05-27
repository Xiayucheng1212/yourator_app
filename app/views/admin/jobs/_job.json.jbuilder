json.extract! job, :id, :content, :status, :require, :benefits, :wage, :company_id, :created_at, :updated_at
json.url job_url(job, format: :json)
