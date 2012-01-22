class PagesController < ApplicationController
  menu_item :home

  def index
    @test = "text"
  end

  def prices
    @prices = "prices"
  end

  def tour
    menu_item :tour
    @tour = "tour"
  end

end

