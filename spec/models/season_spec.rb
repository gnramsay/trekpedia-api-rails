# frozen_string_literal: true

RSpec.describe Season, type: :model do
  describe '#validations' do
    let(:season) { build :season }

    it 'tests we have a valid factory' do
      expect(season).to be_valid
    end

    it 'requires a valid total' do
      season.total = ''
      expect(season).not_to be_valid
      expect(season.errors[:total]).to include("can't be blank")
    end

    it 'requires a valid season_start' do
      season.season_start = ''
      expect(season).not_to be_valid
      expect(season.errors[:season_start]).to include("can't be blank")
    end

    it 'requires a valid season_end' do
      season.season_end = ''
      expect(season).not_to be_valid
      expect(season.errors[:season_end]).to include("can't be blank")
    end
  end
end
