class TagsController < ApplicationController

  def index
    @pagy, @tags = pagy(current_user.tags)
  end

  def destroy
    @tag.destroy
    redirect_to tags_path unless @tag.persisted?
  end

  private

  def find_tag
    @tag = Tag.find(params[:id])
  end

end
