class CabinsController < ApplicationController
  def index
    @cabins = Cabin.all
  end
end
