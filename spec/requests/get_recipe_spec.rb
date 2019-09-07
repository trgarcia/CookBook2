require 'rails_helper'

describe 'Get recipes from request' do
  it 'successfully' do

    response = Faraday.get 'http://localhost:3000/api/v1/recipes'
    json_recipe = JSON.parse(response.body, symbolize_names:true)

    expect(response.status).to eq 200
    expect(response.body).to include 'Bolo de cenoura'
  end
end
