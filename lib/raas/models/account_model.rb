# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents an Account
  class AccountModel < BaseModel
    # An account identifier
    # @return [String]
    attr_accessor :account_identifier

    # An account number
    # @return [String]
    attr_accessor :account_number

    # A display name
    # @return [String]
    attr_accessor :display_name

    # The currency code for the account
    # @return [String]
    attr_accessor :currency_code

    # The current balance of the account
    # @return [Float]
    attr_accessor :current_balance

    # The date the account was created
    # @return [DateTime]
    attr_accessor :created_at

    # The status of the account
    # @return [String]
    attr_accessor :status

    # The contact email on file for the account
    # @return [String]
    attr_accessor :contact_email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['account_number'] = 'accountNumber'
      @_hash['display_name'] = 'displayName'
      @_hash['currency_code'] = 'currencyCode'
      @_hash['current_balance'] = 'currentBalance'
      @_hash['created_at'] = 'createdAt'
      @_hash['status'] = 'status'
      @_hash['contact_email'] = 'contactEmail'
      @_hash
    end

    def initialize(account_identifier = nil,
                   account_number = nil,
                   display_name = nil,
                   currency_code = 'USD',
                   current_balance = nil,
                   created_at = nil,
                   status = nil,
                   contact_email = nil)
      @account_identifier = account_identifier
      @account_number = account_number
      @display_name = display_name
      @currency_code = currency_code
      @current_balance = current_balance
      @created_at = created_at
      @status = status
      @contact_email = contact_email
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_identifier = hash['accountIdentifier']
      account_number = hash['accountNumber']
      display_name = hash['displayName']
      currency_code = hash['currencyCode'] ||= 'USD'
      current_balance = hash['currentBalance']
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      status = hash['status']
      contact_email = hash['contactEmail']

      # Create object from extracted values.
      AccountModel.new(account_identifier,
                       account_number,
                       display_name,
                       currency_code,
                       current_balance,
                       created_at,
                       status,
                       contact_email)
    end
  end
end
