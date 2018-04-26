# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the request to remove a credit card
  class UnregisterCreditCardRequestModel < BaseModel
    # The customer identifier
    # @return [String]
    attr_accessor :customer_identifier

    # The account identifier
    # @return [String]
    attr_accessor :account_identifier

    # The credit card token
    # @return [String]
    attr_accessor :credit_card_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['credit_card_token'] = 'creditCardToken'
      @_hash
    end

    def initialize(customer_identifier = nil,
                   account_identifier = nil,
                   credit_card_token = nil)
      @customer_identifier = customer_identifier
      @account_identifier = account_identifier
      @credit_card_token = credit_card_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_identifier = hash['customerIdentifier']
      account_identifier = hash['accountIdentifier']
      credit_card_token = hash['creditCardToken']

      # Create object from extracted values.
      UnregisterCreditCardRequestModel.new(customer_identifier,
                                           account_identifier,
                                           credit_card_token)
    end
  end
end
