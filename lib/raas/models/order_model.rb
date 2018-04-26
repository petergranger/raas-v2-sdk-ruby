# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents the response from a get order call
  class OrderModel < BaseModel
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

    # The order's amount information
    # @return [CurrencyBreakdownModel]
    attr_accessor :amount_charged

    # Information about the gift card amount
    # @return [CurrencyBreakdownModel]
    attr_accessor :denomination

    # The UTID
    # @return [String]
    attr_accessor :utid

    # The reward name
    # @return [String]
    attr_accessor :reward_name

    # Indicates if an email was sent to the recipient
    # @return [Boolean]
    attr_accessor :send_email

    # The order's status
    # @return [String]
    attr_accessor :status

    # When the order was placed
    # @return [DateTime]
    attr_accessor :created_at

    # Contains the reward credentials
    # @return [RewardModel]
    attr_accessor :reward

    # The sender data
    # @return [NameEmailModel]
    attr_accessor :sender

    # The recipient data
    # @return [NameEmailModel]
    attr_accessor :recipient

    # The email template id
    # @return [String]
    attr_accessor :etid

    # An optional campaign identifier
    # @return [String]
    attr_accessor :campaign

    # The subject of the email
    # @return [String]
    attr_accessor :email_subject

    # An external reference id
    # @return [String]
    attr_accessor :external_ref_id

    # A message included with the email
    # @return [String]
    attr_accessor :message

    # Optional customer notes
    # @return [String]
    attr_accessor :notes

    # Margin share information
    # @return [CurrencyBreakdownModel]
    attr_accessor :margin_share

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reference_order_id'] = 'referenceOrderID'
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['account_number'] = 'accountNumber'
      @_hash['amount_charged'] = 'amountCharged'
      @_hash['denomination'] = 'denomination'
      @_hash['utid'] = 'utid'
      @_hash['reward_name'] = 'rewardName'
      @_hash['send_email'] = 'sendEmail'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'createdAt'
      @_hash['reward'] = 'reward'
      @_hash['sender'] = 'sender'
      @_hash['recipient'] = 'recipient'
      @_hash['etid'] = 'etid'
      @_hash['campaign'] = 'campaign'
      @_hash['email_subject'] = 'emailSubject'
      @_hash['external_ref_id'] = 'externalRefID'
      @_hash['message'] = 'message'
      @_hash['notes'] = 'notes'
      @_hash['margin_share'] = 'marginShare'
      @_hash
    end

    def initialize(reference_order_id = nil,
                   customer_identifier = nil,
                   account_identifier = nil,
                   account_number = nil,
                   amount_charged = nil,
                   denomination = nil,
                   utid = nil,
                   reward_name = nil,
                   send_email = nil,
                   status = nil,
                   created_at = nil,
                   reward = nil,
                   sender = nil,
                   recipient = nil,
                   etid = nil,
                   campaign = nil,
                   email_subject = nil,
                   external_ref_id = nil,
                   message = nil,
                   notes = nil,
                   margin_share = nil)
      @reference_order_id = reference_order_id
      @customer_identifier = customer_identifier
      @account_identifier = account_identifier
      @account_number = account_number
      @amount_charged = amount_charged
      @denomination = denomination
      @utid = utid
      @reward_name = reward_name
      @send_email = send_email
      @status = status
      @created_at = created_at
      @reward = reward
      @sender = sender
      @recipient = recipient
      @etid = etid
      @campaign = campaign
      @email_subject = email_subject
      @external_ref_id = external_ref_id
      @message = message
      @notes = notes
      @margin_share = margin_share
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
      denomination = CurrencyBreakdownModel.from_hash(hash['denomination']) if
        hash['denomination']
      utid = hash['utid']
      reward_name = hash['rewardName']
      send_email = hash['sendEmail']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      reward = RewardModel.from_hash(hash['reward']) if hash['reward']
      sender = NameEmailModel.from_hash(hash['sender']) if hash['sender']
      recipient = NameEmailModel.from_hash(hash['recipient']) if
        hash['recipient']
      etid = hash['etid']
      campaign = hash['campaign']
      email_subject = hash['emailSubject']
      external_ref_id = hash['externalRefID']
      message = hash['message']
      notes = hash['notes']
      margin_share = CurrencyBreakdownModel.from_hash(hash['marginShare']) if
        hash['marginShare']

      # Create object from extracted values.
      OrderModel.new(reference_order_id,
                     customer_identifier,
                     account_identifier,
                     account_number,
                     amount_charged,
                     denomination,
                     utid,
                     reward_name,
                     send_email,
                     status,
                     created_at,
                     reward,
                     sender,
                     recipient,
                     etid,
                     campaign,
                     email_subject,
                     external_ref_id,
                     message,
                     notes,
                     margin_share)
    end
  end
end
