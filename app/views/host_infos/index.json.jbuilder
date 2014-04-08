json.array!(@host_infos) do |host_info|
  json.extract! host_info, :id, :clicky_id, :ip, :domain, :status, :ping, :blacklisted, :blacklisted_on, :checked_at
  json.url host_info_url(host_info, format: :json)
end
