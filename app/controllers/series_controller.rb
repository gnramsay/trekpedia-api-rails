# frozen_string_literal: true

class SeriesController < ApplicationController
  def index
    series = Series.all
    render json: series
  end

  def show
    series = Series.find(params[:id])
    render json: series
  end
end
