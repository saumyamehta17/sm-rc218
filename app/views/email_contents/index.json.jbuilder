json.array!(@email_contents) do |email_content|
  json.extract! email_content, :id, :message
  json.url email_content_url(email_content, format: :json)
end
