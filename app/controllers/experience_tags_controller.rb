class ExperienceTagsController < ApplicationController
  def index
    experience_tags = ExperienceTag.all
    render json: experience_tags.as_json
  end

  def show
    experience_tag = ExperienceTag.find_by(id: params[:id])
    render json: experience_tag.as_json
  end
end
