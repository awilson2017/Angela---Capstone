require "test_helper"

describe Deck do
  let(:deck) { Deck.new }

  it "must be valid" do
    value(deck).must_be :valid?
  end
end
