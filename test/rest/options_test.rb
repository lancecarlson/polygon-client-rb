# frozen_string_literal: true

require "test_helper"

class OptionsTest < Minitest::Test
  def setup
    @client = Polygonio::Rest::Client.new(api_key)
  end

  def test_contract
    VCR.use_cassette("options_contract") do
      res = @client.options.contract("SPY251219C00650000")
      assert_equal 650, res.results.strike_price
    end
  end
end
