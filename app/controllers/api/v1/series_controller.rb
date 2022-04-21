# frozen_string_literal: true

module Api
  module V1
    # Define the Series Controller
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
  end
end
