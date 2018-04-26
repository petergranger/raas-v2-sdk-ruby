# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents a Customer/Group
  class CustomerModel < BaseModel
    # The customer identifier
    # @return [String]
    attr_accessor :customer_identifier

    # The display name
    # @return [String]
    attr_accessor :display_name

    # The status of the customer
    # @return [String]
    attr_accessor :status

    # The date the customer was created
    # @return [DateTime]
    attr_accessor :created_at

    # An array of AccountSummary objects
    # @return [List of AccountSummaryModel]
    attr_accessor :accounts

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['display_name'] = 'displayName'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'createdAt'
      @_hash['accounts'] = 'accounts'
      @_hash
    end

    def initialize(customer_identifier = nil,
                   display_name = nil,
                   status = nil,
                   created_at = nil,
                   accounts = nil)
      @customer_identifier = customer_identifier
      @display_name = display_name
      @status = status
      @created_at = created_at
      @accounts = accounts
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_identifier = hash['customerIdentifier']
      display_name = hash['displayName']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      # Parameter is an array, so we need to iterate through it
      accounts = nil
      unless hash['accounts'].nil?
        accounts = []
        hash['accounts'].each do |structure|
          accounts << (AccountSummaryModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CustomerModel.new(customer_identifier,
                        display_name,
                        status,
                        created_at,
                        accounts)
    end
  end
end
