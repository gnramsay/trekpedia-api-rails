# frozen_string_literal: true

RSpec.describe 'Routes /episode' do
  it 'routes to episode#index' do
    expect(get('/episode')).to route_to('episode#index')
  end

  it 'routes to episode#show' do
    expect(get('/episode/1')).to route_to('episode#show', id: '1')
  end
end
