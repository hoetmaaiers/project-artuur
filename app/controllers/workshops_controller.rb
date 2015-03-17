class WorkshopsController < ApplicationController

  def index
    @workshops = Workshop.all()
    @types = ActsAsTaggableOn::Tagging.where(context: 'types').map(&:tag)
    @audiences = ActsAsTaggableOn::Tagging.where(context: 'audiences').map(&:tag)
  end

  def show
  	@workshop = Workshop.find(params[:id])
  end
end
