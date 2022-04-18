# frozen_string_literal: true

RSpec.describe 'Routes /season' do
  it 'routes to season#index' do
    expect(get('/season')).to route_to('season#index')
  end
end
