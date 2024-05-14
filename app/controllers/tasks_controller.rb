class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
 end

  def new
   @task = Task.new
  end

  def create
    @tast = Task.create(task_param)
    redirect_to tasks_path
  end


  private

  def task_param
    params.require(:task).permit(:title, :details)
  end
end
