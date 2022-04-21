# frozen_string_literal: true

# Define the Espiode Controller
class EpisodeController < ApplicationController
  def index
    episodes = Episode.all
    render json: episodes
  end

  def show
    episode = Episode.find(params[:id])
    render json: episode
  end
end
