# frozen_string_literal: true

RSpec.describe 'Routes /season' do
  it 'routes to season#index' do
    expect(get('/season')).to route_to('season#index')
  end

  it 'routes to season#show' do
    expect(get('/season/1')).to route_to('season#show', id: '1')
  end
end
