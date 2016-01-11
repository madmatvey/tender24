json.array!(@procurements) do |procurement|
  json.extract! procurement, :id, :name, :description, :status, :price, :organization_id
  json.url procurement_url(procurement, format: :json)
end
