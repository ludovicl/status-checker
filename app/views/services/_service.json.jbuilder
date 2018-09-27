json.extract! service, :id, :name, :url, :text_on_page, :number_of_occurrences, :load_waiting_sec, :created_at, :updated_at
json.url service_url(service, format: :json)
