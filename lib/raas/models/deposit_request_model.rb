# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the request to deposit funds via credit card
  class DepositRequestModel < BaseModel
    # The customer identifier
    # @return [String]
    attr_accessor :customer_identifier

    # The account identifier
    # @return [String]
    attr_accessor :account_identifier

    # The credit card token
    # @return [String]
    attr_accessor :credit_card_token

    # The amount to fund
    # @return [Float]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['credit_card_token'] = 'creditCardToken'
      @_hash['amount'] = 'amount'
      @_hash
    end

    def initialize(customer_identifier = nil,
                   account_identifier = nil,
                   credit_card_token = nil,
                   amount = nil)
      @customer_identifier = customer_identifier
      @account_identifier = account_identifier
      @credit_card_token = credit_card_token
      @amount = amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_identifier = hash['customerIdentifier']
      account_identifier = hash['accountIdentifier']
      credit_card_token = hash['creditCardToken']
      amount = hash['amount']

      # Create object from extracted values.
      DepositRequestModel.new(customer_identifier,
                              account_identifier,
                              credit_card_token,
                              amount)
    end
  end
end
