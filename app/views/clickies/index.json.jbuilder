json.array!(@clickies) do |clicky|
  json.extract! clicky, :id, :page_info_id, :clicky_id, :url, :banned_site_id
  json.url clicky_url(clicky, format: :json)
end
