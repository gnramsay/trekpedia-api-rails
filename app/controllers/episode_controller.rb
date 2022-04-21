# frozen_string_literal: true

# Define the Espiode Controller
class EpisodeController < ApplicationController
  def index
    episode = Episode.all
    render json: episode
  end

  def show
    episode = Episode.find(params[:id])
    render json: episode
  end
end
