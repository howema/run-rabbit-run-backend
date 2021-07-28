class ExperienceTagsController < ApplicationController
  def create
    experience_tag = ExperienceTag.new(
      experience_id: params[:experience_id],
      tag_id: params[:tag_id],
    )
    experience_tag.save
    render json: experience_tag.as_json
  end

  def destroy
    experience_tag = ExperienceTag.find_by(id: params[:id])
    experience_tag.destroy
    render json: { message: "It's gone now. Either you achieved it or you gave up. Congrats!" }
  end
end
