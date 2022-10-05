class HomeController < ApplicationController

  def index #ye index.html.erb wale page ko control kar rha 
  end

  def about

    @about_me ="Hey There! My Name is Muhammad Basiq.";
    
  end
end
