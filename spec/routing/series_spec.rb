# frozen_string_literal: true

RSpec.describe 'Routes /series' do
  it 'routes to routes#index' do
    expect(get('/api/v1/series')).to route_to('api/v1/series#index')
  end

  it 'routes to routes#show' do
    expect(get('/api/v1/series/1')).to route_to('api/v1/series#show', id: '1')
  end
end
