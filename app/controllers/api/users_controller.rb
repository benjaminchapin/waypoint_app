class Api::UsersController < ApplicationController
  def create
    user = User.new(
      email: params[:email],
      password: params[:password_digest],
      password_confirmation: params[:password_confirmation],
      first_name: params[:first_name],
      last_name: params[:last_name]

    )
    if user.save
      render json: { message: "User created successfully! "}, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end
end
