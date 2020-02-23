class AdminController < ApplicationController
  load_and_authorize_resource :class => false
  check_authorization
  def index
  end
end
