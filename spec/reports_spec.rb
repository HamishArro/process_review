require "reports"

describe "Reports" do
  it "returns green when a value of 75+ is entered" do
    expect(report("80")).to eq("Green: 1")
  end

  it "returns green: 2 when two values of 75+ is entered" do
    expect(report("80,90")).to eq("Green: 2")
  end

  it "returns amber when a value of 50 - 74 is entered" do
    expect(report("60")).to eq("Amber: 1")
  end

  it "returns green: 2 when two values of 50 - 74 are entered" do
    expect(report("50,70")).to eq("Amber: 2")
  end


  it "returns red when a value of 0 - 49 is entered" do
    expect(report("40")).to eq("Red: 1")
  end
end
