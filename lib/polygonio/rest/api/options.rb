# frozen_string_literal: true

module Polygonio
  module Rest
    class Options < PolygonRestHandler
      class ContractResponse < PolygonResponse
        attribute :results do
          attribute :cfi, Types::String
          attribute :contract_type, Types::String
          attribute :exercise_style, Types::String
          attribute :expiration_date, Types::String
          attribute :primary_exchange, Types::String
          attribute :shares_per_contract, Types::Integer
          attribute :strike_price, Types::JSON::Decimal
          attribute :ticker, Types::String
          attribute :underlying_ticker, Types::String
        end
      end

      def contract(ticker)
        ticker = Types::String[ticker]

        res = client.request.get("v3/reference/options/contracts/O:#{ticker}")

        ContractResponse[res.body]
      end
    end
  end
end
