json.extract! person, :id, :name, :title, :email, :url, :notes, :created_at, :updated_at
json.url person_url(person, format: :json)
