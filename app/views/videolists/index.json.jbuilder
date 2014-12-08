json.array!(@videolists) do |videolist|
  json.extract! videolist, :id, :videoid, :videoURL, :flag, :title, :category, :author, :description, :uptime, :tag
  json.url videolist_url(videolist, format: :json)
end
