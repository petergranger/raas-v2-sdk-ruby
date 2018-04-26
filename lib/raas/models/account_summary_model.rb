# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents an Account Summary
  class AccountSummaryModel < BaseModel
    # The account identifier
    # @return [String]
    attr_accessor :account_identifier

    # The account number
    # @return [String]
    attr_accessor :account_number

    # The display name
    # @return [String]
    attr_accessor :display_name

    # The date the account was created
    # @return [DateTime]
    attr_accessor :created_at

    # The status of the account
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['account_number'] = 'accountNumber'
      @_hash['display_name'] = 'displayName'
      @_hash['created_at'] = 'createdAt'
      @_hash['status'] = 'status'
      @_hash
    end

    def initialize(account_identifier = nil,
                   account_number = nil,
                   display_name = nil,
                   created_at = nil,
                   status = nil)
      @account_identifier = account_identifier
      @account_number = account_number
      @display_name = display_name
      @created_at = created_at
      @status = status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_identifier = hash['accountIdentifier']
      account_number = hash['accountNumber']
      display_name = hash['displayName']
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      status = hash['status']

      # Create object from extracted values.
      AccountSummaryModel.new(account_identifier,
                              account_number,
                              display_name,
                              created_at,
                              status)
    end
  end
end
