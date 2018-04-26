# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents a Credit Card
  class CreditCardModel < BaseModel
    # The customer identifier
    # @return [String]
    attr_accessor :customer_identifier

    # The account identifier
    # @return [String]
    attr_accessor :account_identifier

    # The credit card token
    # @return [String]
    attr_accessor :token

    # The label/nickname for the credit card
    # @return [String]
    attr_accessor :label

    # The last four digits of the credit card number
    # @return [String]
    attr_accessor :last_four_digits

    # The credit card's expiration date
    # @return [String]
    attr_accessor :expiration_date

    # The status of the credit card
    # @return [String]
    attr_accessor :status

    # The date the card was added
    # @return [DateTime]
    attr_accessor :created_date

    # The date the card will be available for use
    # @return [DateTime]
    attr_accessor :activation_date

    # An optional array of FullNameEmail objects
    # @return [List of FullNameEmailModel]
    attr_accessor :contact_information

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['token'] = 'token'
      @_hash['label'] = 'label'
      @_hash['last_four_digits'] = 'lastFourDigits'
      @_hash['expiration_date'] = 'expirationDate'
      @_hash['status'] = 'status'
      @_hash['created_date'] = 'createdDate'
      @_hash['activation_date'] = 'activationDate'
      @_hash['contact_information'] = 'contactInformation'
      @_hash
    end

    def initialize(customer_identifier = nil,
                   account_identifier = nil,
                   token = nil,
                   label = nil,
                   last_four_digits = nil,
                   expiration_date = nil,
                   status = nil,
                   created_date = nil,
                   activation_date = nil,
                   contact_information = nil)
      @customer_identifier = customer_identifier
      @account_identifier = account_identifier
      @token = token
      @label = label
      @last_four_digits = last_four_digits
      @expiration_date = expiration_date
      @status = status
      @created_date = created_date
      @activation_date = activation_date
      @contact_information = contact_information
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_identifier = hash['customerIdentifier']
      account_identifier = hash['accountIdentifier']
      token = hash['token']
      label = hash['label']
      last_four_digits = hash['lastFourDigits']
      expiration_date = hash['expirationDate']
      status = hash['status']
      created_date = DateTime.rfc3339(hash['createdDate']) if
        hash['createdDate']
      activation_date = DateTime.rfc3339(hash['activationDate']) if
        hash['activationDate']
      # Parameter is an array, so we need to iterate through it
      contact_information = nil
      unless hash['contactInformation'].nil?
        contact_information = []
        hash['contactInformation'].each do |structure|
          contact_information << (FullNameEmailModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CreditCardModel.new(customer_identifier,
                          account_identifier,
                          token,
                          label,
                          last_four_digits,
                          expiration_date,
                          status,
                          created_date,
                          activation_date,
                          contact_information)
    end
  end
end
