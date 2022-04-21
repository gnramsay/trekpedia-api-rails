# frozen_string_literal: true

RSpec.describe 'Routes /episodes' do
  it 'routes to episodes#index' do
    expect(get('/episodes')).to route_to('episodes#index')
  end

  it 'routes to episodes#show' do
    expect(get('/episodes/1')).to route_to('episodes#show', id: '1')
  end
end
