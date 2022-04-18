# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :missing_record

  def missing_record
    error = {
      status: 404,
      title: 'Record not Found',
      detail: 'That record does not exist in the database'
    }
    render json: { errors: [error] }, status: 404
  end
end
