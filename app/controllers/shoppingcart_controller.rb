class ShoppingcartController < ApplicationController
  def add
  	id = params[:id]

  	if session[:shoppingcart] then
  	   shoppingcart = session[:shoppingcart]
  	else
  	   session[:shoppingcart] = {}
  	   shoppingcart = session[:shoppingcart]
  	end

  	if shoppingcart[id] then
  	   shoppingcart[id] = shoppingcart[id] + 1
  	else
  	   shoppingcart[id] = 1
  	end 

  	redirect_to :action => :index  		
  end

  def clear_cart
    session[:shoppingcart] = nil
    redirect_to :action => :index
  end

  def index
  	if session[:shoppingcart] then
  	  @shoppingcart = session[:shoppingcart]
  	else
  	  @shoppingcart = {}
    end
  end
end




