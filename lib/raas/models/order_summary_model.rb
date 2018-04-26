# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents an Order Summary
  class OrderSummaryModel < BaseModel
    # The reference order id
    # @return [String]
    attr_accessor :reference_order_id

    # The customer identifier
    # @return [String]
    attr_accessor :customer_identifier

    # The account identifier
    # @return [String]
    attr_accessor :account_identifier

    # The account number
    # @return [String]
    attr_accessor :account_number

    # The order amount information
    # @return [CurrencyBreakdownModel]
    attr_accessor :amount_charged

    # The margin share information
    # @return [CurrencyBreakdownModel]
    attr_accessor :margin_share

    # The UTID
    # @return [String]
    attr_accessor :utid

    # The reward's name
    # @return [String]
    attr_accessor :reward_name

    # The sender's information
    # @return [String]
    attr_accessor :sender

    # The recipient's information
    # @return [NameEmailModel]
    attr_accessor :recipient

    # Indicates if an an email was sent to the recipient
    # @return [Boolean]
    attr_accessor :send_email

    # The order's status
    # @return [String]
    attr_accessor :status

    # The date the order was placed
    # @return [DateTime]
    attr_accessor :created_at

    # The order's email template id
    # @return [String]
    attr_accessor :etid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reference_order_id'] = 'referenceOrderID'
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['account_number'] = 'accountNumber'
      @_hash['amount_charged'] = 'amountCharged'
      @_hash['margin_share'] = 'marginShare'
      @_hash['utid'] = 'utid'
      @_hash['reward_name'] = 'rewardName'
      @_hash['sender'] = 'sender'
      @_hash['recipient'] = 'recipient'
      @_hash['send_email'] = 'sendEmail'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'createdAt'
      @_hash['etid'] = 'etid'
      @_hash
    end

    def initialize(reference_order_id = nil,
                   customer_identifier = nil,
                   account_identifier = nil,
                   account_number = nil,
                   amount_charged = nil,
                   margin_share = nil,
                   utid = nil,
                   reward_name = nil,
                   sender = nil,
                   recipient = nil,
                   send_email = nil,
                   status = nil,
                   created_at = nil,
                   etid = nil)
      @reference_order_id = reference_order_id
      @customer_identifier = customer_identifier
      @account_identifier = account_identifier
      @account_number = account_number
      @amount_charged = amount_charged
      @margin_share = margin_share
      @utid = utid
      @reward_name = reward_name
      @sender = sender
      @recipient = recipient
      @send_email = send_email
      @status = status
      @created_at = created_at
      @etid = etid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      reference_order_id = hash['referenceOrderID']
      customer_identifier = hash['customerIdentifier']
      account_identifier = hash['accountIdentifier']
      account_number = hash['accountNumber']
      amount_charged = CurrencyBreakdownModel.from_hash(hash['amountCharged']) if
        hash['amountCharged']
      margin_share = CurrencyBreakdownModel.from_hash(hash['marginShare']) if
        hash['marginShare']
      utid = hash['utid']
      reward_name = hash['rewardName']
      sender = hash['sender']
      recipient = NameEmailModel.from_hash(hash['recipient']) if
        hash['recipient']
      send_email = hash['sendEmail']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      etid = hash['etid']

      # Create object from extracted values.
      OrderSummaryModel.new(reference_order_id,
                            customer_identifier,
                            account_identifier,
                            account_number,
                            amount_charged,
                            margin_share,
                            utid,
                            reward_name,
                            sender,
                            recipient,
                            send_email,
                            status,
                            created_at,
                            etid)
    end
  end
end
