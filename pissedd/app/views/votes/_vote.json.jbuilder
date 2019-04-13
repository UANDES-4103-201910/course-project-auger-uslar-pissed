json.extract! vote, :id, :up_vote, :date, :created_at, :updated_at
json.url vote_url(vote, format: :json)
