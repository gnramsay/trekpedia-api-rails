# frozen_string_literal: true

RSpec.describe 'Routes /series' do
  it 'routes to routes#index' do
    expect(get('/series')).to route_to('series#index')
  end

  it 'routes to routes#show' do
    expect(get('/series/1')).to route_to('series#show', id: '1')
  end
end
