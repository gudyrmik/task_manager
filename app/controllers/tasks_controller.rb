class TasksController < ApplicationController

  def index
    @pagy, @tasks = pagy(current_user.tasks)
  end

end
