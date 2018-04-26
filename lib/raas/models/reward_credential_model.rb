# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents a Reward Credential
  class RewardCredentialModel < BaseModel
    # The label of the credential
    # @return [String]
    attr_accessor :label

    # The actual credential
    # @return [String]
    attr_accessor :value

    # The type of the credential
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['label'] = 'label'
      @_hash['value'] = 'value'
      @_hash['type'] = 'type'
      @_hash
    end

    def initialize(label = nil,
                   value = nil,
                   type = nil)
      @label = label
      @value = value
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      label = hash['label']
      value = hash['value']
      type = hash['type']

      # Create object from extracted values.
      RewardCredentialModel.new(label,
                                value,
                                type)
    end
  end
end
