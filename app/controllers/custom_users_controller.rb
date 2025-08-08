class CustomUsersController < ApplicationController
  before_action :authenticate_custom_user!
  def index
    @custom_users = CustomUser.all
  end
end
