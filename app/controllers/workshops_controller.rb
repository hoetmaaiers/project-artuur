class WorkshopsController < ApplicationController
  before_filter :set_workshop, only: [:show]

  def index
    @workshops = Workshop.all()
    @tags = ActsAsTaggableOn::Tagging.where(context: 'tags').map(&:tag).uniq
    @audiences = ActsAsTaggableOn::Tagging.where(context: 'audiences').map(&:tag).uniq
  end

  def show
    # @workshop.requests.new
    @request = @workshop.requests.new
  end

private

  def set_workshop
    @workshop = Workshop.find(params[:id])
  end
end
