RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'it should check for substring at the beginning' do
      expect(subject).to start_with('cat')
    end

    it 'it should check for substring at the end' do
      expect(subject).to end_with('pillar')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for the elements at the beginning of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
    end

    it 'should check for the elements at the end of the array' do
      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d)
    end

    it { is_expected.to start_with(:a, :b) }
    it { is_expected.to end_with(:c, :d) }
  end
end
