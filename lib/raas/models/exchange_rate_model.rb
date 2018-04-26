# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents an Exchange Rate
  class ExchangeRateModel < BaseModel
    # When the exchange rate was last updated
    # @return [DateTime]
    attr_accessor :last_modified_date

    # The reward currency
    # @return [String]
    attr_accessor :reward_currency

    # The base currency
    # @return [String]
    attr_accessor :base_currency

    # The exchange rate
    # @return [Float]
    attr_accessor :base_fx

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['last_modified_date'] = 'lastModifiedDate'
      @_hash['reward_currency'] = 'rewardCurrency'
      @_hash['base_currency'] = 'baseCurrency'
      @_hash['base_fx'] = 'baseFx'
      @_hash
    end

    def initialize(last_modified_date = nil,
                   reward_currency = nil,
                   base_currency = nil,
                   base_fx = nil)
      @last_modified_date = last_modified_date
      @reward_currency = reward_currency
      @base_currency = base_currency
      @base_fx = base_fx
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      last_modified_date = DateTime.rfc3339(hash['lastModifiedDate']) if
        hash['lastModifiedDate']
      reward_currency = hash['rewardCurrency']
      base_currency = hash['baseCurrency']
      base_fx = hash['baseFx']

      # Create object from extracted values.
      ExchangeRateModel.new(last_modified_date,
                            reward_currency,
                            base_currency,
                            base_fx)
    end
  end
end
