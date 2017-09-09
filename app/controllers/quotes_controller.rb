class QuotesController < ApplicationController

	def create
		quo = params[:quote].permit(:quot, :author)
		quot = Quote.create(quo)
		flash[:success] = "New Quote created."
		redirect_to root_path
	end

	def destroy
		quote = Quote.find(params[:id])
		quote.destroy
		flash[:danger] = "Qoute Deleted."
		redirect_to root_path
	end

end