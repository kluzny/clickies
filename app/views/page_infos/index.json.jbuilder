json.array!(@page_infos) do |page_info|
  json.extract! page_info, :id, :clicky_id, :title, :nsfw
  json.url page_info_url(page_info, format: :json)
end
