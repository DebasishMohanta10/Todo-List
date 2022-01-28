class TasksController < ApplicationController
  def index
    @tasks = Task.order(:due_date)
    @new_task = Task.new
  end

  def create
    @new_task = Task.new(task_params)

    if @new_task.save
      redirect_to root_url
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_url
  end
  private
    def task_params
      params.require(:task).permit(:name,:description,:due_date)
    end

end
