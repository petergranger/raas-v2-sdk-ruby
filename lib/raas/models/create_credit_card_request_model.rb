# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the request to register a credit card
  class CreateCreditCardRequestModel < BaseModel
    # The customer identifier
    # @return [String]
    attr_accessor :customer_identifier

    # The account identifier
    # @return [String]
    attr_accessor :account_identifier

    # The credit card's label/nickname
    # @return [String]
    attr_accessor :label

    # The IP address of the user registering the card
    # @return [String]
    attr_accessor :ip_address

    # A NewCreditCard object
    # @return [NewCreditCardModel]
    attr_accessor :credit_card

    # A BillingAddress object
    # @return [BillingAddressModel]
    attr_accessor :billing_address

    # An optional array of FullNameEmail objects
    # @return [List of FullNameEmailModel]
    attr_accessor :contact_information

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['label'] = 'label'
      @_hash['ip_address'] = 'ipAddress'
      @_hash['credit_card'] = 'creditCard'
      @_hash['billing_address'] = 'billingAddress'
      @_hash['contact_information'] = 'contactInformation'
      @_hash
    end

    def initialize(customer_identifier = nil,
                   account_identifier = nil,
                   label = nil,
                   ip_address = nil,
                   credit_card = nil,
                   billing_address = nil,
                   contact_information = nil)
      @customer_identifier = customer_identifier
      @account_identifier = account_identifier
      @label = label
      @ip_address = ip_address
      @credit_card = credit_card
      @billing_address = billing_address
      @contact_information = contact_information
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_identifier = hash['customerIdentifier']
      account_identifier = hash['accountIdentifier']
      label = hash['label']
      ip_address = hash['ipAddress']
      credit_card = NewCreditCardModel.from_hash(hash['creditCard']) if
        hash['creditCard']
      billing_address = BillingAddressModel.from_hash(hash['billingAddress']) if
        hash['billingAddress']
      # Parameter is an array, so we need to iterate through it
      contact_information = nil
      unless hash['contactInformation'].nil?
        contact_information = []
        hash['contactInformation'].each do |structure|
          contact_information << (FullNameEmailModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CreateCreditCardRequestModel.new(customer_identifier,
                                       account_identifier,
                                       label,
                                       ip_address,
                                       credit_card,
                                       billing_address,
                                       contact_information)
    end
  end
end
