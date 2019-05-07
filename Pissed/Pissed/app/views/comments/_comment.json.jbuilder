json.extract! comment, :id, :description, :up_vote_amount, :down_vote_amount, :user_id, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
