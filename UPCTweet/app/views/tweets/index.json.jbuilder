json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :user, :url, :mesagge
  json.url tweet_url(tweet, format: :json)
end
