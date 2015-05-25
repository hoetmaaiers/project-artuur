class Api::WorkshopsController < ApplicationController
  def index
    workshops = Workshop.where(published: true)
    render json: workshops
    # @tags = @workshops.map(&:tags).flatten.uniq
    # @audiences = @workshops.map(&:audiences).flatten.uniq
  end

  def show
    workshop = Workshop.find(params[:id])
    render json: workshop
  end
end
