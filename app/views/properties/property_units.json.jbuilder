json.array! @property_units do |property|
    json.id property.id
    json.address property.address
    json.state property.state
    json.city property.city
    json.units property.units
end
