class DashboardController < ApplicationController
  load_and_authorize_resource :class => Dashboard
  check_authorization
  def index
  end
end
