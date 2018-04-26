# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents the response from the unregister credit card call
  class UnregisterCreditCardResponseModel < BaseModel
    # The date the card was removed
    # @return [DateTime]
    attr_accessor :created_date

    # A message describing the status of the card
    # @return [String]
    attr_accessor :message

    # The credit card token
    # @return [String]
    attr_accessor :token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['created_date'] = 'createdDate'
      @_hash['message'] = 'message'
      @_hash['token'] = 'token'
      @_hash
    end

    def initialize(created_date = nil,
                   message = nil,
                   token = nil)
      @created_date = created_date
      @message = message
      @token = token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      created_date = DateTime.rfc3339(hash['createdDate']) if
        hash['createdDate']
      message = hash['message']
      token = hash['token']

      # Create object from extracted values.
      UnregisterCreditCardResponseModel.new(created_date,
                                            message,
                                            token)
    end
  end
end
