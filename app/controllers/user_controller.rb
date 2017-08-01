class UserController < ApplicationController
  before_action :set_test, only: [:show]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_test
    @user = User.find(params[:id])
  end
end
