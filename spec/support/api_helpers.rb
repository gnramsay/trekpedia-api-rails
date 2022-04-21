# frozen_string_literal: true

module ApiHelpers
  def json
    # JSON.parse(response.body).deep_symbolize_keys
    JSON.parse(response.body)
  end
end
