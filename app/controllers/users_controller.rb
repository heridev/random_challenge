class UsersController < ApplicationController
  skip_forgery_protection
  MY_NAME = 'Jose Heriberto Perez'
  def index
    users = User.find_active

    render json: {
      data: users
    }
  end

  def create
    user = User.create(name: MY_NAME, active: true)
    render json: {
      data: {
        user:
      }
    }
  end
end
