# frozen_string_literal: true

module Api
  module V1
    # Define the Season Controller
    class SeasonsController < ApplicationController
      def index
        seasons = Season.all
        render json: seasons
      end

      def show
        season = Season.find(params[:id])
        render json: season
      end
    end
  end
end
