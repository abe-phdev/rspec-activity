class Royal
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe Royal do
  let(:name) { nil }
  subject { described_class.new(name) }

  it 'is nil' do
    expect(subject.name).to eq(nil)
  end

  context 'when abe' do
    let(:name) { 'Abe' }

    it 'represents a great person' do
      expect(subject.name).to eq(name)
    end
  end
end
