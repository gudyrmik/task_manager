class ProjectsController < ApplicationController

  before_action :authenticate_user!

  def index
    @pagy, @projects = pagy(current_user.projects)
  end
end
