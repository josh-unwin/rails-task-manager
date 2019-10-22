class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new           # GET /restaurants/new
    @task = Task.new
  end

  def create        # POST /restaurants
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit          # GET /restaurants/:id/edit
    @task = Task.find(params[:id])
  end

  def update        # PATCH /restaurants/:id
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy       # DELETE /restaurants/:id
    @task = Task.find(params[:id])
    @task.delete
    redirect_to tasks_path
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.mark_as_complete
    @task.save
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
