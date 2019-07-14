class BooksController < ApplicationController
  def index
    # binding.pry
    @books = Book.all
  end

  # private
  #
  # def book_params
  #   params.permit(:title, :pages, :publication)
  # end
end
