
require 'httparty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)


p "==================================="
p "Wards:"
p "==================================="

toronto_wards_json["objects"].each do |ward|
  p ward['name']
end

p "==================================="

candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/')
candidate_json = JSON.parse(candidates_response.body)

p "Candidates:"
p "==================================="

candidate_json["objects"].each do |candidate|
  p candidate["party_name"]
  p candidate["first_name"]
  p candidate["last_name"]
  p "-----------------------"
end

p "==================================="
