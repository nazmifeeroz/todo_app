class TasklistsController < ApplicationController

	def index
		@quot = Quote.all
		@quote = Quote.new

		@ins = @quot.sample
		@insquot = @ins.quot
		@insauth = @ins.author

		@bgimage = Bgimage.find_by(:id=>1)

		@list = Tasklist.all
		@tasklist = Tasklist.new

		@task = Task.new
		
	end

	def show
		@tasklist = Tasklist.find(params[:id])
		@task = @tasklist.tasks.build
	end

	def create
		tl = params[:tasklist].permit(:listname)
		Tasklist.create(tl)
		flash[:success] = "New list created."
		redirect_to root_path
	end

	def destroy
		list = Tasklist.find(params[:id])
		list.destroy
		flash[:danger] = "List Deleted."
		redirect_to root_path
	end

end