class QuotesController < ApplicationController
  def index
  	@quote = Quote.order("RANDOM()").first
  end

  def new
  	@quote = Quote.new
  end

  def create
  	Quote.create(quote_params)
  	#sends the saying and author parts to the database.
  	redirect_to root_path
  end

  private

  def quote_params
  	#pulls the values of saying and author from the quotes form.
  	params.require(:quote).permit(:saying, :author)
    #make sure that our form is secure(we only permit "saying" and "author")
  end
end
