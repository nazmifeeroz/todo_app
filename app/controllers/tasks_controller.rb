class TasksController < ApplicationController

	def create

		tasklist = Tasklist.find(params[:tasklist_id])
		task_params = params.require(:task).permit(:tasktitle, :taskdesc, :taskstatus, :taskdue)
		tasklist.tasks.create(task_params)
		flash[:success] = "New task created."
		redirect_to root_path
	
	end

	def destroy
		
		tasklists  = Tasklist.find(params[:tasklist_id])
		task = tasklists.tasks.find(params[:id])
		tasklists.tasks.delete(task)
		flash[:danger] = "Task Deleted."
		redirect_to root_path
	end


end