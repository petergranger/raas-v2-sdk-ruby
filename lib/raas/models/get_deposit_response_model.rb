# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the response from a get deposit call
  class GetDepositResponseModel < BaseModel
    # The deposit amount
    # @return [Float]
    attr_accessor :amount

    # The amount charged
    # @return [Float]
    attr_accessor :amount_charged

    # The date the deposit was made
    # @return [String]
    attr_accessor :created_date

    # The fee percentage
    # @return [Float]
    attr_accessor :fee_percent

    # The deposit reference id
    # @return [String]
    attr_accessor :reference_deposit_id

    # The deposit's status
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['amount_charged'] = 'amountCharged'
      @_hash['created_date'] = 'createdDate'
      @_hash['fee_percent'] = 'feePercent'
      @_hash['reference_deposit_id'] = 'referenceDepositID'
      @_hash['status'] = 'status'
      @_hash
    end

    def initialize(amount = nil,
                   amount_charged = nil,
                   created_date = nil,
                   fee_percent = nil,
                   reference_deposit_id = nil,
                   status = nil)
      @amount = amount
      @amount_charged = amount_charged
      @created_date = created_date
      @fee_percent = fee_percent
      @reference_deposit_id = reference_deposit_id
      @status = status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      amount_charged = hash['amountCharged']
      created_date = hash['createdDate']
      fee_percent = hash['feePercent']
      reference_deposit_id = hash['referenceDepositID']
      status = hash['status']

      # Create object from extracted values.
      GetDepositResponseModel.new(amount,
                                  amount_charged,
                                  created_date,
                                  fee_percent,
                                  reference_deposit_id,
                                  status)
    end
  end
end
