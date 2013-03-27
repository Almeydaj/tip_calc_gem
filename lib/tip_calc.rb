module TipCalculator
  require "helpers/math"
  #require
  include TipCalculator::Math

    def self.tipcalc(amount, percent, precision=2)
      tip = amount * percent / 100
      round_to_precision(tip, precision)
    end

    def self.newamount(amount, tip, precision=2)
      total = amount + tip
      round_to_precision(total, precision)
    end

    def self.person(total, people, precision=2)
      person = total / people
      round_to_precision(person, precision)
    end
end

