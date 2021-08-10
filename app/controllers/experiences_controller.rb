class ExperiencesController < ApplicationController
  def index
    experiences = Experience.where(user_id: current_user.id)
    render json: experiences
  end

  def show
    experience = Experience.find_by(id: params[:id])
    render json: experience
  end

  def create
    experience = Experience.new(
      title: params[:title],
      subtasks: params[:subtasks],
      notes: params[:notes],
      image: params[:image],
      user_id: current_user.id,
      complete: false,
    )

    if experience.save
      render json: { message: "Experience successfully created" }
    else
      render json: { errors: experience.errors.full_messages }, status: :bad_request
    end
  end

  def update
    experience = Experience.find_by(id: params[:id])
    experience.title = params[:title] || experience.title
    experience.subtasks = params[:subtasks] || experience.subtasks
    experience.notes = params[:notes] || experience.notes
    experience.image = params[:image] || experience.image
    experience.complete = params[:complete] || experience.complete

    if experience.save
      render json: { message: "Experience successfully updated" }
    else
      render json: { errors: experience.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    experience = Experience.find_by(id: params[:id])
    experience.destroy
    render json: { message: "It's gone now. Either you achieved it or you gave up. Congrats!" }
  end
end
