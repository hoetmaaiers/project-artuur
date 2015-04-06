class WorkshopsController < ApplicationController
  before_filter :set_workshop, only: [:show]

private

  def set_workshop
    @workshop = Workshop.find(params[:id])
  end
end
