# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the response from the get exchange rates call
  class ExchangeRateResponseModel < BaseModel
    # A disclaimer about the exchange rates returned
    # @return [String]
    attr_accessor :disclaimer

    # An array of ExchangeRate objects
    # @return [List of ExchangeRateModel]
    attr_accessor :exchange_rates

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['disclaimer'] = 'disclaimer'
      @_hash['exchange_rates'] = 'exchangeRates'
      @_hash
    end

    def initialize(disclaimer = nil,
                   exchange_rates = nil)
      @disclaimer = disclaimer
      @exchange_rates = exchange_rates
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      disclaimer = hash['disclaimer']
      # Parameter is an array, so we need to iterate through it
      exchange_rates = nil
      unless hash['exchangeRates'].nil?
        exchange_rates = []
        hash['exchangeRates'].each do |structure|
          exchange_rates << (ExchangeRateModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      ExchangeRateResponseModel.new(disclaimer,
                                    exchange_rates)
    end
  end
end
