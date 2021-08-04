require "reports"

describe "Reports" do

  describe "single input/ type" do
    it "returns no results given when an empty string is inputed" do
      expect(report("")).to eq("No results given")
    end

    it "returns green when a value of 75+ is entered" do
      expect(report("80")).to eq("Green: 1")
    end

    it "returns green: 2 when two values of 75+ is entered" do
      expect(report("80,90")).to eq("Green: 2")
    end

    it "returns amber when a value of 50 - 74 is entered" do
      expect(report("60")).to eq("Amber: 1")
    end

    it "returns amber: 2 when two values of 50 - 74 are entered" do
      expect(report("50,70")).to eq("Amber: 2")
    end

    it "returns red when a value of 0 - 49 is entered" do
      expect(report("40")).to eq("Red: 1")
    end

    it "returns red: 2 when two values of 0 - 49 are entered" do
      expect(report("30,40")).to eq("Red: 2")
    end
  end

  describe "different input types" do
    it "returns 'Green: 2\nAmber: 1\nRed: 3' when two values '1,10,45,60,80,100' are entered" do
      expect(report("1,10,45,60,80,100")).to eq("Green: 2\nAmber: 1\nRed: 3")
    end
  end
end
