class ProductsController < ApplicationController

def index
  if params[:category].blank?
     @products = Product.all
  else
     @category_id = Category.find_by(name: params[:category]).id
     @products = Product.where(:category_id => @category_id)
  end
end

  def show
     @product = Product.find(params[:id])
 end

 def add_to_cart
    @product = Product.find(params[:id])
  if !current_cart.products.include?(@product)
    current_cart.add_product_to_cart(@product)
    flash[:notice] = "你已成功将 #{@product.title} 加入订单"
  else
     flash[:warning] = "你的订单内已有此项服务"
  end
    redirect_to :back
 end

end
