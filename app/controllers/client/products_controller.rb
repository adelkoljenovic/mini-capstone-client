class Client::ProductsController < ApplicationController
  def index
    response = Unirest.get("localhost:3000/api/products")
    @products = response.body
    render "index.html.erb"
  end

  def show
    product_id = params[:id]
    response = Unirest.get("localhost:3000/api/products/#{product_id}")
    @product = response.body
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end
end
