# frozen_string_literal: true

RSpec.describe 'Routes /seasons' do
  it 'routes to seasons#index' do
    expect(get('/seasons')).to route_to('seasons#index')
  end

  it 'routes to seasons#show' do
    expect(get('/seasons/1')).to route_to('seasons#show', id: '1')
  end
end
