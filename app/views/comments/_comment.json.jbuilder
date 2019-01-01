json.extract! comment, :id, :user_id, :article_id, :content, :status, :created_at, :updated_at
json.url comment_url(comment, format: :json)
