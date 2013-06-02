class ProjectsController < ApplicationController
  def index
    @tags = Project.tag_counts_on(:tags)
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @tags = Project.tag_counts_on(:tags)
  end
  
end
