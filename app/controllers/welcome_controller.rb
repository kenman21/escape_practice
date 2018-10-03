class WelcomeController < ApplicationController

  def welcome
    @items = Item.all
  end

end
