class WelcomeController < ApplicationController
  layout "welcome"

  def go_to_instruments

    @products = Product.where(:category_id => 1)
  end

end
