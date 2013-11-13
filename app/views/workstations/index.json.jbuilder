json.array!(@workstations) do |workstation|
  json.extract! workstation, 
  json.url workstation_url(workstation, format: :json)
end
