class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @interest_groups = InterestGroup.all
  end
end
