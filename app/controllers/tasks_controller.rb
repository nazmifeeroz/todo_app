class TasksController < ApplicationController

	def create

		@tasklist = Tasklist.find(params[:tasklist_id])
		task_params = params.require(:task).permit(:tasktitle, :taskdesc, :taskstatus, :taskdue)
		@task = @tasklist.tasks.create(task_params)
		if @task.valid?
			flash[:success] = "New task created."
			redirect_to root_path
		else
			flash[:danger] = "Field(s) are blank."
			render "tasklists/show"
		end
	
	end

	def edit
		@tasklist = Tasklist.find(params[:tasklist_id])
		@task = @tasklist.tasks.find(params[:id])
	end

	def update 
		task_params = params[:task].permit(:tasktitle, :taskdesc, :taskstatus, :taskdue)
		tasklist = Tasklist.find(params[:tasklist_id])
		task = tasklist.tasks.find(params[:id])
		task.update(task_params)
		flash[:success] = "Task updated"
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