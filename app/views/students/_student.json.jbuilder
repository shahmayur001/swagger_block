json.extract! student, :id, :name, :rollno, :created_at, :updated_at
json.url student_url(student, format: :json)