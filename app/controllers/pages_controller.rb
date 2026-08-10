class PagesController < ApplicationController
  def home
  end
  def about
    # request to DB about additional info
    @additional_info = "Vlad & Max side project"
  end

  def contact
    # request to db -> filter team members -> select by role
    @team = [ "Vlad", "Max", "Pauline" ]

    if params[:member] # default when loading the page params are = nil
      @team = @team.select { |member| member.start_with?(params[:member]) }
    end
  end
end
