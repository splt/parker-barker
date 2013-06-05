class ProjectsController < ApplicationController
  def index
    #sleep 1
    @tags = Project.tag_counts_on(:tags)
    @projects = Project.all
    unless params[:id].nil?
      @item = Project.find(params[:id])
    end
    respond_to do |format|
        format.html
        format.json { render json: @item }
    end
  end

  def show
    @item = Project.find(params[:id])
    
    
    #@project_tags = @project.tags
    #@tags = Project.tag_counts_on(:tags)
    
  end
  
end
