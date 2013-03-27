require "tip_calc"

describe TipCalculator do
  it "calculates the tip based on percent" do
    a = TipCalculator.tipcalc(151.34, 20)
    a.should eq 30.27
  end

  it "adds the original amount and the tip" do
    a = TipCalculator.newamount(151.34, 30.27)
    a.should eq 181.61
  end

  it "divide the new total by the number of people" do
    a = TipCalculator.person(181.61, 3)
    a.should eq 60.54
  end
end

