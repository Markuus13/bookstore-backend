require 'rails_helper'

RSpec.describe Author, type: :model do
  it { is_expected.to have_many(:books) }
  it { is_expected.to validate_presence_of(:name) }

  describe "#to_s" do
    it "returns the author's name" do
      author = FactoryBot.create(:author, name: "Foo Bar")
      expect(author.name).to eq "Foo Bar"
    end
  end
end
