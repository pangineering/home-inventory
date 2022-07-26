json.extract! feed, :id, :f_id, :title, :body, :type, :date, :by, :created_at, :updated_at
json.url feed_url(feed, format: :json)
