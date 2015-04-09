class WorkshopsController < ApplicationController
  before_filter :set_workshop, only: [:show]

  def show
    # @workshop.requests.new
    @request = @workshop.requests.new
  end

private

  def set_workshop
    @workshop = Workshop.find(params[:id])
  end
end
