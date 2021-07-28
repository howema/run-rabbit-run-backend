class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      favorite_thing: params[:favorite_thing],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(id: params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.password = params[:password] || user.password
    user.password_confirmation = params[:password_confirmation] || user.password_confirmation
    user.favorite_thing = params[:favorite_thing] || user.favorite_thing
    if user.save
      render json: { message: "User updated successfully" }
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
