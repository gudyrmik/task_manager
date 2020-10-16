class ProjectsController < ApplicationController

  before_action :find_project, only: :destroy

  def index
    @pagy, @projects = pagy(current_user.projects)
  end

  def destroy
    @project.destroy
    redirect_to projects_path unless @project.persisted?
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

end
