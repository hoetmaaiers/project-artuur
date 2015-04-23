class WorkshopsController < ApplicationController
  before_filter :set_workshop, only: [:show]

  def index
    @workshops = Workshop.where(published: true)
    @tags = @workshops.map(&:tags).flatten.uniq
    @audiences = @workshops.map(&:audiences).flatten.uniq
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
