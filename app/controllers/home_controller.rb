class HomeController < ApplicationController
  def index
    response = Faraday.get 'http://localhost:3000/api/v1/recipes'
    json_recipe = JSON.parse(response.body, symbolize_names:true)

    @recipe = json_recipe[0]
  end
end
