# frozen_string_literal: true

RSpec.describe 'Episode', type: :request do
  subject(:episode) { create :episode }

  let(:json_result) do
    { id: episode.id,
      num_overall: episode.num_overall,
      num_in_season: episode.num_in_season,
      title: episode.title,
      link: episode.link,
      director: episode.director,
      air_date: episode.air_date,
      season_id: episode.season_id }
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get '/api/v1/episodes'
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct number of Episodes' do
      episode
      create :episode
      get '/api/v1/episodes'
      expect(json.length).to eq 2
    end

    it 'returns correct JSON data' do
      episode
      get '/api/v1/episodes'
      expected = json.first.deep_symbolize_keys
      expect(expected).to include(json_result)
    end
  end

  describe 'Get #show' do
    it 'returns a success response' do
      episode
      get "/api/v1/episodes/#{episode.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct JSON data' do
      episode
      get "/api/v1/episodes/#{episode.id}"
      expected = json.deep_symbolize_keys
      expect(expected).to include(json_result)
    end

    context 'when record not found' do
      subject { get '/api/v1/episodes/99' }

      it_behaves_like 'record_not_found'
    end
  end
end
