class HomeController < ApplicationController
  def index
    response = Faraday.get 'http://localhost:3000/api/v1/recipes'
    json_recipe = JSON.parse(response.body, symbolize_names:true)

    @recipe = json_recipe[0]
    @recipe_type = @recipe[:recipe_type_id]

    recipe_type = Faraday.get 'http://localhost:3000/api/v1/recipe_types/@recipe_type'
    j = JSON.parse(recipe_type.body, symbolize_names:true)
    byebug
  end
end
