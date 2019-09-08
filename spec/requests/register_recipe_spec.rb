require 'rails_helper'

describe 'Register recipe from request' do
  it 'successfully' do

    conn = Faraday.new(:url => 'http://localhost:3000')

    response = conn.post '/api/v1/recipe_types', {:name =>'Sobre'}

    
    expect(response.status).to eq 200
    expect(response.body).to include 'Bolo de cenoura'

  end
end
