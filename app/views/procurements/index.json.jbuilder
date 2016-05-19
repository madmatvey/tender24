json.array!(@procurements) do |procurement|
  json.extract! procurement, :id, :name, :details
  json.url procurement_url(procurement, format: :json)
end
