# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents a RaaS 5xx Error
  class RaasServerErrorModel < BaseModel
    # The error message
    # @return [String]
    attr_accessor :message

    # The RaaS error code
    # @return [Integer]
    attr_accessor :code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['message'] = 'message'
      @_hash['code'] = 'code'
      @_hash
    end

    def initialize(message = nil,
                   code = nil)
      @message = message
      @code = code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      message = hash['message']
      code = hash['code']

      # Create object from extracted values.
      RaasServerErrorModel.new(message,
                               code)
    end
  end
end
