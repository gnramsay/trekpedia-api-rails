# frozen_string_literal: true

shared_examples_for 'record_not_found' do
  let(:missing_record) do
    {
      status: 404,
      title: 'Record not Found',
      detail: 'That record does not exist in the database'
    }
  end

  it 'returns 404 status code (not_found)' do
    subject
    expect(response).to have_http_status(:not_found)
  end

  it 'returns proper error body' do
    subject
    # puts JSON.parse(response.body)
    json_result = JSON.parse(response.body).deep_symbolize_keys
    expect(json_result[:errors]).to include(missing_record)
  end
end
