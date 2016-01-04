class AddFieldsToUsersController < ApplicationController
  before_action :set_add_fields_to_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @add_fields_to_users = AddFieldsToUser.all
    respond_with(@add_fields_to_users)
  end

  def show
    respond_with(@add_fields_to_user)
  end

  def new
    @add_fields_to_user = AddFieldsToUser.new
    respond_with(@add_fields_to_user)
  end

  def edit
  end

  def create
    @add_fields_to_user = AddFieldsToUser.new(add_fields_to_user_params)
    @add_fields_to_user.save
    respond_with(@add_fields_to_user)
  end

  def update
    @add_fields_to_user.update(add_fields_to_user_params)
    respond_with(@add_fields_to_user)
  end

  def destroy
    @add_fields_to_user.destroy
    respond_with(@add_fields_to_user)
  end

  private
    def set_add_fields_to_user
      @add_fields_to_user = AddFieldsToUser.find(params[:id])
    end

    def add_fields_to_user_params
      params.require(:add_fields_to_user).permit(:grade, :user_id)
    end
end
