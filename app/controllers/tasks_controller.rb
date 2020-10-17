class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]
  before_action :init_scope_param, only: :index

  def index
    @pagy, @tasks = pagy(current_user.tasks.send("#{filtered_scope_param}"))
  end

  def show; end

  def update
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def new
    @task = current_user.tasks.new
  end

  def create
    @task = current_user.tasks.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path unless @task.persisted?
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :is_done, :project_id)
  end

  def init_scope_param
    params[:scope] ||= 'all'
  end

  def filtered_scope_param
    value = params.permit(:scope)[:scope]
    value = 'all' unless value == 'completed' || value == 'in_progress'
    value
  end

end
