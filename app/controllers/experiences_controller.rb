class ExperiencesController < ApplicationController
  def index
    experiences = Experience.all
    render json: experiences.as_json
  end

  def show
    experience = Experience.find_by(id: params[:id])
    render json: experience.as_json
  end

  def create
    experience = Experience.new(
      title: params[:title],
      subtasks: params[:subtasks],
      notes: params[:notes],
    )

    experience.save
    render json: experience.as_json
  end

  def update
    experience = Experience.find_by(id: params[:id])
    experience.title = params[:title] || experience.title
    experience.subtasks = params[:subtasks] || experience.subtasks
    experience.notes = params[:notes] || experience.notes
    experience.save
    render json: experience.as_json
  end
end
