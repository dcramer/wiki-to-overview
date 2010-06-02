class ProjectsController < ApplicationController
  unloadable
 
  before_filter :forward_to_wiki, :only => :show

  def forward_to_wiki
    redirect_to(:controller => "wiki", :action => "index")
    return false
  end
end
