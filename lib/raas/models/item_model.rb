# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents an item
  class ItemModel < BaseModel
    # The UTID
    # @return [String]
    attr_accessor :utid

    # The reward name
    # @return [String]
    attr_accessor :reward_name

    # The currency code
    # @return [String]
    attr_accessor :currency_code

    # The item's status
    # @return [String]
    attr_accessor :status

    # The item's value type (VARIABLE_VALUE or FIXED_VALUE)
    # @return [String]
    attr_accessor :value_type

    # The reward type
    # @return [String]
    attr_accessor :reward_type

    # The date the item was created
    # @return [DateTime]
    attr_accessor :created_date

    # The date the item was last updated
    # @return [DateTime]
    attr_accessor :last_update_date

    # The countries this item is valid in
    # @return [List of String]
    attr_accessor :countries

    # The minimum orderable value (for variable value items)
    # @return [Float]
    attr_accessor :min_value

    # The maximum orderable value (for variable value items)
    # @return [Float]
    attr_accessor :max_value

    # The face value of the gift card
    # @return [Float]
    attr_accessor :face_value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['utid'] = 'utid'
      @_hash['reward_name'] = 'rewardName'
      @_hash['currency_code'] = 'currencyCode'
      @_hash['status'] = 'status'
      @_hash['value_type'] = 'valueType'
      @_hash['reward_type'] = 'rewardType'
      @_hash['created_date'] = 'createdDate'
      @_hash['last_update_date'] = 'lastUpdateDate'
      @_hash['countries'] = 'countries'
      @_hash['min_value'] = 'minValue'
      @_hash['max_value'] = 'maxValue'
      @_hash['face_value'] = 'faceValue'
      @_hash
    end

    def initialize(utid = nil,
                   reward_name = nil,
                   currency_code = nil,
                   status = nil,
                   value_type = nil,
                   reward_type = nil,
                   created_date = nil,
                   last_update_date = nil,
                   countries = nil,
                   min_value = nil,
                   max_value = nil,
                   face_value = nil)
      @utid = utid
      @reward_name = reward_name
      @currency_code = currency_code
      @status = status
      @value_type = value_type
      @reward_type = reward_type
      @created_date = created_date
      @last_update_date = last_update_date
      @countries = countries
      @min_value = min_value
      @max_value = max_value
      @face_value = face_value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      utid = hash['utid']
      reward_name = hash['rewardName']
      currency_code = hash['currencyCode']
      status = hash['status']
      value_type = hash['valueType']
      reward_type = hash['rewardType']
      created_date = DateTime.rfc3339(hash['createdDate']) if
        hash['createdDate']
      last_update_date = DateTime.rfc3339(hash['lastUpdateDate']) if
        hash['lastUpdateDate']
      countries = hash['countries']
      min_value = hash['minValue']
      max_value = hash['maxValue']
      face_value = hash['faceValue']

      # Create object from extracted values.
      ItemModel.new(utid,
                    reward_name,
                    currency_code,
                    status,
                    value_type,
                    reward_type,
                    created_date,
                    last_update_date,
                    countries,
                    min_value,
                    max_value,
                    face_value)
    end
  end
end
