class CabinsController < ApplicationController
  def index
    @cabins = Cabin.all
  end

  def contact_form
  end  
end
