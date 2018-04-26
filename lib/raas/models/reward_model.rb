# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents a Reward
  class RewardModel < BaseModel
    # A map of reward credentials
    # @return [Array<String, String>]
    attr_accessor :credentials

    # An array of reward credentials
    # @return [List of RewardCredentialModel]
    attr_accessor :credential_list

    # Reward redemption instructions
    # @return [String]
    attr_accessor :redemption_instructions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['credentials'] = 'credentials'
      @_hash['credential_list'] = 'credentialList'
      @_hash['redemption_instructions'] = 'redemptionInstructions'
      @_hash
    end

    def initialize(credentials = nil,
                   credential_list = nil,
                   redemption_instructions = nil)
      @credentials = credentials
      @credential_list = credential_list
      @redemption_instructions = redemption_instructions
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      credentials = hash['credentials']
      # Parameter is an array, so we need to iterate through it
      credential_list = nil
      unless hash['credentialList'].nil?
        credential_list = []
        hash['credentialList'].each do |structure|
          credential_list << (RewardCredentialModel.from_hash(structure) if structure)
        end
      end
      redemption_instructions = hash['redemptionInstructions']

      # Create object from extracted values.
      RewardModel.new(credentials,
                      credential_list,
                      redemption_instructions)
    end
  end
end
