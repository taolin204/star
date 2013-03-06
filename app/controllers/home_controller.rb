class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
  end

  def users
    if current_user.has_role? :admin
    	@users = User.all
    	redirect_to users_url
    elsif current_user.has_role? :agent
    	@interviewees = Interviewee.all
    	redirect_to interviewees_url
    else
      @interviewees = Interviewee.all
      redirect_to interviewees_url
    end
  end
end
