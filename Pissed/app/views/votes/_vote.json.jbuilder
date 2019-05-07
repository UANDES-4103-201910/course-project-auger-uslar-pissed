json.extract! vote, :id, :down_or_up_vote, :date, :user_id, :post_id, :comment_id, :created_at, :updated_at
json.url vote_url(vote, format: :json)
