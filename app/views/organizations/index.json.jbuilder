json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :logo, :details_id
  json.url organization_url(organization, format: :json)
end
