# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents a Billing Address
  class BillingAddressModel < BaseModel
    # The first name
    # @return [String]
    attr_accessor :first_name

    # The last name
    # @return [String]
    attr_accessor :last_name

    # The address
    # @return [String]
    attr_accessor :address_line_1

    # The city
    # @return [String]
    attr_accessor :city

    # The state/province
    # @return [String]
    attr_accessor :state

    # The postal code
    # @return [String]
    attr_accessor :postal_code

    # The 2-letter country code
    # @return [String]
    attr_accessor :country

    # The billing contact's email address
    # @return [String]
    attr_accessor :email_address

    # An optional second address line
    # @return [String]
    attr_accessor :address_line_2

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['first_name'] = 'firstName'
      @_hash['last_name'] = 'lastName'
      @_hash['address_line_1'] = 'addressLine1'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['postal_code'] = 'postalCode'
      @_hash['country'] = 'country'
      @_hash['email_address'] = 'emailAddress'
      @_hash['address_line_2'] = 'addressLine2'
      @_hash
    end

    def initialize(first_name = nil,
                   last_name = nil,
                   address_line_1 = nil,
                   city = nil,
                   state = nil,
                   postal_code = nil,
                   country = nil,
                   email_address = nil,
                   address_line_2 = nil)
      @first_name = first_name
      @last_name = last_name
      @address_line_1 = address_line_1
      @city = city
      @state = state
      @postal_code = postal_code
      @country = country
      @email_address = email_address
      @address_line_2 = address_line_2
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash['firstName']
      last_name = hash['lastName']
      address_line_1 = hash['addressLine1']
      city = hash['city']
      state = hash['state']
      postal_code = hash['postalCode']
      country = hash['country']
      email_address = hash['emailAddress']
      address_line_2 = hash['addressLine2']

      # Create object from extracted values.
      BillingAddressModel.new(first_name,
                              last_name,
                              address_line_1,
                              city,
                              state,
                              postal_code,
                              country,
                              email_address,
                              address_line_2)
    end
  end
end
