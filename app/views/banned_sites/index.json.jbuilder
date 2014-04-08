json.array!(@banned_sites) do |banned_site|
  json.extract! banned_site, :id, :banned_on, :domain, :reason
  json.url banned_site_url(banned_site, format: :json)
end
