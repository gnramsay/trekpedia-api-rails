# frozen_string_literal: true

RSpec.describe 'Routes /episodes' do
  it 'routes to episodes#index' do
    expect(get('/api/v1/episodes')).to route_to('api/v1/episodes#index')
  end

  it 'routes to episodes#show' do
    expect(get('/api/v1/episodes/1')).to route_to('api/v1/episodes#show', id: '1')
  end
end
