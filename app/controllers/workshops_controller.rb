class WorkshopsController < ApplicationController
  before_filter :set_workshop, only: [:show]

  def index
    @workshops = Workshop.all()
    @types = ActsAsTaggableOn::Tagging.where(context: 'types').map(&:tag)
    @audiences = ActsAsTaggableOn::Tagging.where(context: 'audiences').map(&:tag)
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
