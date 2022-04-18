require 'rails_helper'

RSpec.describe 'Seasons', type: :request do
  subject(:season) { create :season }

  let(:series) { create :series }

  let(:json_result) do
    { id: season.id,
      total: season.total,
      season_start: season.season_start,
      season_end: season.season_end,
      series_id: season.series_id }
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get '/season'
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct number of Seasons' do
      season
      create :season
      get '/season'
      json = JSON.parse(response.body)
      expect(json.length).to eq 2
    end

    it 'returns correct JSON data' do
      season
      get '/season'
      expected = JSON.parse(response.body).first.deep_symbolize_keys
      expect(expected).to include(json_result)
    end
  end

  describe 'Get #show' do
    it 'returns a success response' do
      season
      get "/season/#{season.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct JSON data' do
      series
      get "/season/#{season.id}"
      expected = JSON.parse(response.body).deep_symbolize_keys
      expect(expected).to include(json_result)
    end
  end
end
