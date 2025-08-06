json.extract! student_detail, :id, :created_at, :updated_at
json.url student_detail_url(student_detail, format: :json)
