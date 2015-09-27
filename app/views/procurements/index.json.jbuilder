json.array!(@procurements) do |procurement|
  json.extract! procurement, :id, :name, :description, :status, :price, :company_id
  json.url procurement_url(procurement, format: :json)
end
