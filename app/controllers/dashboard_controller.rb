class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @websites = current_user.account.websites
  end
end
