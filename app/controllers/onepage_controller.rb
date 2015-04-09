class OnepageController < ApplicationController
  def index
    @workshops = Workshop.all()
    @types = ActsAsTaggableOn::Tagging.where(context: 'types').map(&:tag)
    @audiences = ActsAsTaggableOn::Tagging.where(context: 'audiences').map(&:tag)
  end
end
