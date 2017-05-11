json.extract! person, :id, :nome, :telefone, :celular, :created_at, :updated_at
json.url person_url(person, format: :json)
