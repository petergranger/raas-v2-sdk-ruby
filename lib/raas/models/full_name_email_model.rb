# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents a full name and an email address
  class FullNameEmailModel < BaseModel
    # The full name
    # @return [String]
    attr_accessor :full_name

    # The email address
    # @return [String]
    attr_accessor :email_address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['full_name'] = 'fullName'
      @_hash['email_address'] = 'emailAddress'
      @_hash
    end

    def initialize(full_name = nil,
                   email_address = nil)
      @full_name = full_name
      @email_address = email_address
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      full_name = hash['fullName']
      email_address = hash['emailAddress']

      # Create object from extracted values.
      FullNameEmailModel.new(full_name,
                             email_address)
    end
  end
end
