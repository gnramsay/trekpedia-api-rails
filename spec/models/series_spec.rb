# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Series, type: :model do
  describe '#validations' do
    let(:series) { build :series }

    it 'tests we have a valid factory' do
      expect(series).to be_valid
    end

    it 'requires a valid name' do
      series.name = ''
      expect(series).not_to be_valid
      expect(series.errors[:name]).to include("can't be blank")
    end

    it 'requires a valid url' do
      series.url = ''
      expect(series).not_to be_valid
      expect(series.errors[:url]).to include("can't be blank")
    end

    it 'requires a valid episodes_url' do
      series.episodes_url = ''
      expect(series).not_to be_valid
      expect(series.errors[:episodes_url]).to include("can't be blank")
    end

    it 'requires a valid season_count' do
      series.season_count = ''
      expect(series).not_to be_valid
      expect(series.errors[:season_count]).to include("can't be blank")
    end

    it 'requires a valid episode_count' do
      series.episode_count = ''
      expect(series).not_to be_valid
      expect(series.errors[:episode_count]).to include("can't be blank")
    end

    it 'requires valid series dates' do
      series.dates = ''
      expect(series).not_to be_valid
      expect(series.errors[:dates]).to include("can't be blank")
    end

    it 'logo can be blank' do
      series.logo = ''
      expect(series).to be_valid
    end
  end
end
