require 'rails_helper'

RSpec.describe Book, type: :model do
  it { is_expected.to belong_to(:author) }
  it { is_expected.to validate_presence_of(:title) }

  describe "#to_s" do
    it "returns the book's title" do
      book = FactoryBot.create(:book, title: "Design Patterns")
      expect(book.title).to eq "Design Patterns"
    end
  end
end
