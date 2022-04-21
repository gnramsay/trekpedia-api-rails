# frozen_string_literal: true

RSpec.describe Episode, type: :model do
  describe '#validations' do
    let(:episode) { build :episode }

    it 'tests we have a valid factory' do
      expect(episode).to be_valid
    end

    it 'requires a title' do
      episode.title = ''
      expect(episode).not_to be_valid
      expect(episode.errors[:title]).to include("can't be blank")
    end

    it 'requires a director' do
      episode.director = ''
      expect(episode).not_to be_valid
      expect(episode.errors[:director]).to include("can't be blank")
    end

    it 'requires a link but it can be blank' do
      episode.link = ''
      expect(episode).to be_valid
    end

    it 'requires num_overall' do
      episode.num_overall = ''
      expect(episode).not_to be_valid
      expect(episode.errors[:num_overall]).to include("can't be blank")
    end

    it 'requires num_in_season' do
      episode.num_in_season = ''
      expect(episode).not_to be_valid
      expect(episode.errors[:num_in_season]).to include("can't be blank")
    end

    it 'requires air_date' do
      episode.air_date = ''
      expect(episode).not_to be_valid
      expect(episode.errors[:air_date]).to include("can't be blank")
    end
  end
end
