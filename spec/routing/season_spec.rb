# frozen_string_literal: true

RSpec.describe 'Routes /seasons' do
  it 'routes to seasons#index' do
    expect(get('/api/v1/seasons')).to route_to('api/v1/seasons#index')
  end

  it 'routes to seasons#show' do
    expect(get('/api/v1/seasons/1')).to route_to('api/v1/seasons#show', id: '1')
  end
end
