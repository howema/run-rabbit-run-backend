class ExperiencesController < ApplicationController
  def index
    experiences = Experience.where(user_id: current_user.id, complete: false)
    render json: experiences
  end

  def index_true
    experiences = Experience.where(user_id: current_user.id, complete: true)
    render json: experiences
  end

  def show
    experience = Experience.find_by(id: params[:id])
    render json: experience
  end

  def create
    experience = Experience.new(
      title: params[:title],
      task1: params[:task1],
      task2: params[:task2],
      task3: params[:task3],
      notes: params[:notes],
      image: params[:image],
      budget: params[:budget],
      timeline: params[:timeline],
      travel_type: params[:travel_type],
      task1a: params[:task1a],
      task1b: params[:task1b],
      task1c: params[:task1c],
      task2a: params[:task2a],
      task2b: params[:task2b],
      task2c: params[:task2c],
      task3a: params[:task3a],
      task3b: params[:task3b],
      task3c: params[:task3c],
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
    experience.task1 = params[:task1] || experience.task1
    experience.task2 = params[:task2] || experience.task2
    experience.task3 = params[:task3] || experience.task3
    experience.notes = params[:notes] || experience.notes
    experience.image = params[:image] || experience.image
    experience.budget = params[:budget] || experience.budget
    experience.timeline = params[:timeline] || experience.timeline
    experience.travel_type = params[:travel_type] || experience.travel_type
    experience.task1a = params[:task1a] || experience.task1a
    experience.task1b = params[:task1b] || experience.task1b
    experience.task1c = params[:task1c] || experience.task1c
    experience.task2a = params[:task2a] || experience.task2a
    experience.task2b = params[:task2b] || experience.task2b
    experience.task2c = params[:task2c] || experience.task2c
    experience.task3a = params[:task3a] || experience.task3a
    experience.task3b = params[:task3b] || experience.task3b
    experience.task3c = params[:task3c] || experience.task3c
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
