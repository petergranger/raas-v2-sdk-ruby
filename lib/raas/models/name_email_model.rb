# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents a name and an email address
  class NameEmailModel < BaseModel
    # An email address
    # @return [String]
    attr_accessor :email

    # A first name
    # @return [String]
    attr_accessor :first_name

    # A last name
    # @return [String]
    attr_accessor :last_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['email'] = 'email'
      @_hash['first_name'] = 'firstName'
      @_hash['last_name'] = 'lastName'
      @_hash
    end

    def initialize(email = nil,
                   first_name = nil,
                   last_name = nil)
      @email = email
      @first_name = first_name
      @last_name = last_name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      email = hash['email']
      first_name = hash['firstName']
      last_name = hash['lastName']

      # Create object from extracted values.
      NameEmailModel.new(email,
                         first_name,
                         last_name)
    end
  end
end
