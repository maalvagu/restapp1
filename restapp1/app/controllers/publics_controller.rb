class PublicsController < ApplicationController
  def index
  end

  def search
  	 @cities = City.all.map { |e| [e.name, e.id] }
  end

  def contact
  end

  def about_us
  end
end
