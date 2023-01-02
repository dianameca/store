class ProductsController < ApplicationController
  def index
    @products = Products.all
    render json: @products
  end

  def show
      @product = Product.find(params[:id])
      render json: @product
  end

  def create
      @product = Product.create(
          product_name:params[:product_name],
          product_description:params[:product_description],
          product_keywords: params[:product_keywords]
      )
      render json: @product
  end

  def update
      @product = Product.find(params[:id])
      @product.update(
          product_name:params[:product_name],
          product_description:params[:product_description],
          product_keywords: params[:product_keywords]
      )
      render json: @product
  end

  def destroy
      @products = product.all
      @product = product.find(params[:id])
      @product.destroy
      render json: @products
  end
end
