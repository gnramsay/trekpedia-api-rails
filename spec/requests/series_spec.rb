# frozen_string_literal: true

RSpec.describe 'Series', type: :request do
  subject(:series) { create :series }

  let(:json_result) do
    { id: series.id,
      name: series.name,
      url: series.url,
      season_count: series.season_count,
      episode_count: series.episode_count,
      episodes_url: series.episodes_url,
      dates: series.dates,
      logo: series.logo }
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get '/series'
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct number of Series' do
      series
      create :series
      get '/series'
      json = JSON.parse(response.body)
      expect(json.length).to eq 2
    end

    it 'returns correct JSON data' do
      series
      get '/series'
      expected = JSON.parse(response.body).first.deep_symbolize_keys
      expect(expected).to include(json_result)
    end
  end

  describe 'Get #show' do
    it 'returns a success response' do
      series
      get "/series/#{series.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct JSON data' do
      series
      get "/series/#{series.id}"
      expected = JSON.parse(response.body).deep_symbolize_keys
      expect(expected).to include(json_result)
    end
  end
end
