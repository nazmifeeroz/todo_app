class TasklistsController < ApplicationController

	def index
		@quot = Quote.all
		@quote = Quote.new

		@ins = @quot.sample
		@insquot = @ins.quot
		@insauth = @ins.author

	end

end