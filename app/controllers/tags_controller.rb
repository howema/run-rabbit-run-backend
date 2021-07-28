class TagsController < ApplicationController
  def index
    tags = Tag.all
    render json: tags.as_json
  end
end
