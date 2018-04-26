# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents the response returned from a resend order request
  class ResendOrderResponseModel < BaseModel
    # When the resend request was created
    # @return [DateTime]
    attr_accessor :created_at

    # The order resend id
    # @return [Integer]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['created_at'] = 'createdAt'
      @_hash['id'] = 'id'
      @_hash
    end

    def initialize(created_at = nil,
                   id = nil)
      @created_at = created_at
      @id = id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      id = hash['id']

      # Create object from extracted values.
      ResendOrderResponseModel.new(created_at,
                                   id)
    end
  end
end
