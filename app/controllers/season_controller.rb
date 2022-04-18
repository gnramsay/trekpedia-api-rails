# frozen_string_literal: true

# Define the Season Controller
class SeasonController < ApplicationController
  def index
    series = Season.all
    render json: series
  end

  def show
    series = Season.find(params[:id])
    render json: series
  end
end
