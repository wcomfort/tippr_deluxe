# frozen_string_literal: true

require_relative "tippr_deluxe/version"

module TipprDeluxe
  def self.calculate(bill, tip)
    case
    when
      tip == "low"
      multiplier = 1.1
    when
      tip == "regular"
      multiplier = 1.2
    when
      tip == "high"
      multiplier = 1.3
    else
      puts "please enter a valid bill amount and tip"
    end
    total = bill * multiplier
    puts total
    puts "ello mate"
    total
  end
end
