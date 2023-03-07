# frozen_string_literal: true

RSpec.describe TipprDeluxe do
  it "has a version number" do
    expect(TipprDeluxe::VERSION).not_to be nil
  end

  it "Calculates a low tip" do
    expect(TipprDeluxe.calculate(10, "low")).to eq(11)
  end

  it "Calculates a regular tip" do
    expect(TipprDeluxe.calculate(10, "regular")).to eq(12)
  end

  it "Calculates a high tip" do
    expect(TipprDeluxe.calculate(10, "high")).to eq(13)
  end
end
