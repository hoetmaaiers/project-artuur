class Admin::AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_filter :check_authorization

  private

  def check_authorization
    if !current_user.admin?
      # raise CanCan::AccessDenied.new("Not authorized!", :manage, :all)
      puts "can't access"
    end
  end
end
