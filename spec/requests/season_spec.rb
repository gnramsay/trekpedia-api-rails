# frozen_string_literal: true

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
      get '/api/v1/seasons'
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct number of Seasons' do
      season
      create :season
      get '/api/v1/seasons'
      expect(json.length).to eq 2
    end

    it 'returns correct JSON data' do
      season
      get '/api/v1/seasons'
      expected = json.first.deep_symbolize_keys
      expect(expected).to include(json_result)
    end
  end

  describe 'Get #show' do
    it 'returns a success response' do
      season
      get "/api/v1/seasons/#{season.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct JSON data' do
      series
      get "/api/v1/seasons/#{season.id}"
      expected = json.deep_symbolize_keys
      expect(expected).to include(json_result)
    end

    context 'when record not found' do
      subject { get '/api/v1/seasons/99' }

      it_behaves_like 'record_not_found'
    end
  end
end
