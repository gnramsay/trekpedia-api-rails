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
      get '/episode'
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct number of Episodes' do
      episode
      create :episode
      get '/episode'
      json = JSON.parse(response.body)
      expect(json.length).to eq 2
    end

    it 'returns correct JSON data' do
      episode
      get '/episode'
      expected = JSON.parse(response.body).first.deep_symbolize_keys
      expect(expected).to include(json_result)
    end
  end

  describe 'Get #show' do
    it 'returns a success response' do
      episode
      get "/episode/#{episode.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'returns correct JSON data' do
      episode
      get "/episode/#{episode.id}"
      expected = JSON.parse(response.body).deep_symbolize_keys
      expect(expected).to include(json_result)
    end

    context 'when record not found' do
      subject { get '/episode/99' }

      it_behaves_like 'record_not_found'
    end
  end
end
