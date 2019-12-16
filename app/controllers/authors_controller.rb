class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:author_id])
  end
end 
