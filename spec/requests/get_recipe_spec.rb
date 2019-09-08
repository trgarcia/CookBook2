require 'rails_helper'

describe 'Get recipes from request' do
  it 'successfully' do

    response = Faraday.get 'http://localhost:3000/api/v1/recipes'
    json_recipe = JSON.parse(response.body, symbolize_names:true)

    expect(response.status).to eq 200
    expect(response.body).to include 'Bolo de cenoura'
  end
  it 'get recipe and recipe_type'do

  response = Faraday.get 'http://localhost:3000/api/v1/recipes'
  json_recipe = JSON.parse(response.body, symbolize_names:true)

  @recipe = json_recipe[0]
  @recipe_type = @recipe[:recipe_type_id]

  recipe_type = Faraday.get 'http://localhost:3000/api/v1/recipe_types/1'
  j = JSON.parse(recipe_type.body, symbolize_names:true)
  byebug

  end
end
