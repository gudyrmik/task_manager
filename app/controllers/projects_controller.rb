class ProjectsController < ApplicationController

  def index
    @pagy, @projects = pagy(current_user.projects)
  end

end
