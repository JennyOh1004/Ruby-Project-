class QuotesController < ApplicationController
  def index
  	@quote = Quote.order("RANDOM()").first
  end


  def create
  	@quote = Quote.create(quote_params)
  	#sends the saying and author parts to the database.
  	if @quote.invalid?
  		flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
  	end
  	redirect_to root_path
  end

  def about
  end

  private

  def quote_params
  	#pulls the values of saying and author from the quotes form.
  	params.require(:quote).permit(:saying, :author)
    #make sure that our form is secure(we only permit "saying" and "author")
  end
end
