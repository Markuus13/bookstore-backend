require 'rails_helper'

describe JwtWrapper do
  subject { described_class }

  let(:payload) { { "one" => 'two' } }
  let(:token) { 'eyJhbGciOiJIUzI1NiJ9.eyJvbmUiOiJ0d28ifQ.xq9ZvYJzXbT0xkzRynIIqH1Bz2VKBLoIKdfZAL6pfWg' }

  describe '.encode' do
    it 'encodes the given payload and returns a token' do
      expect(subject.encode(payload)).to eq(token)
    end
  end

  describe '.decode' do
    it 'decodes the given token and returns a payload' do
      expect(subject.decode(token)).to eq(payload)
    end
  end
end
