# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the credit card information required to register a credit card
  class NewCreditCardModel < BaseModel
    # The credit card number
    # @return [String]
    attr_accessor :number

    # The credit card expiration date in YYYY-MM format
    # @return [String]
    attr_accessor :expiration

    # The 3 or 4 digit card security code on the back of card
    # @return [String]
    attr_accessor :verification_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number'] = 'number'
      @_hash['expiration'] = 'expiration'
      @_hash['verification_number'] = 'verificationNumber'
      @_hash
    end

    def initialize(number = nil,
                   expiration = nil,
                   verification_number = nil)
      @number = number
      @expiration = expiration
      @verification_number = verification_number
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number = hash['number']
      expiration = hash['expiration']
      verification_number = hash['verificationNumber']

      # Create object from extracted values.
      NewCreditCardModel.new(number,
                             expiration,
                             verification_number)
    end
  end
end
