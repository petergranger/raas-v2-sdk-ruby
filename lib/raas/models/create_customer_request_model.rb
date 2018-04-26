# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the request to create a customer
  class CreateCustomerRequestModel < BaseModel
    # The customer identifier
    # @return [String]
    attr_accessor :customer_identifier

    # The display name
    # @return [String]
    attr_accessor :display_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['display_name'] = 'displayName'
      @_hash
    end

    def initialize(customer_identifier = nil,
                   display_name = nil)
      @customer_identifier = customer_identifier
      @display_name = display_name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_identifier = hash['customerIdentifier']
      display_name = hash['displayName']

      # Create object from extracted values.
      CreateCustomerRequestModel.new(customer_identifier,
                                     display_name)
    end
  end
end
