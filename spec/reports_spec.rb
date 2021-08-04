require "reports"

describe "Reports" do
  it "returns green when a value of 75+ is entered" do
    expect(report("80")).to eq("Green: 1")
  end

  it "returns amber when a value of 50 - 74 is entered" do
    expect(report("60")).to eq("Amber: 1")
  end
end
