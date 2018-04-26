# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the request to place an order
  class CreateOrderRequestModel < BaseModel
    # The account identifier
    # @return [String]
    attr_accessor :account_identifier

    # The order amount
    # @return [Float]
    attr_accessor :amount

    # The customer identifier
    # @return [String]
    attr_accessor :customer_identifier

    # Indicates whether we should deliver this reward via email
    # @return [Boolean]
    attr_accessor :send_email

    # The UTID
    # @return [String]
    attr_accessor :utid

    # An optional campaign identifier
    # @return [String]
    attr_accessor :campaign

    # The subject of the gift email
    # @return [String]
    attr_accessor :email_subject

    # An optional external reference id
    # @return [String]
    attr_accessor :external_ref_id

    # The gift message in the email
    # @return [String]
    attr_accessor :message

    # The recipient's information
    # @return [NameEmailModel]
    attr_accessor :recipient

    # Optional sender information
    # @return [NameEmailModel]
    attr_accessor :sender

    # Optional notes (not displayed to customer)
    # @return [String]
    attr_accessor :notes

    # The email template identifier
    # @return [String]
    attr_accessor :etid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_identifier'] = 'accountIdentifier'
      @_hash['amount'] = 'amount'
      @_hash['customer_identifier'] = 'customerIdentifier'
      @_hash['send_email'] = 'sendEmail'
      @_hash['utid'] = 'utid'
      @_hash['campaign'] = 'campaign'
      @_hash['email_subject'] = 'emailSubject'
      @_hash['external_ref_id'] = 'externalRefID'
      @_hash['message'] = 'message'
      @_hash['recipient'] = 'recipient'
      @_hash['sender'] = 'sender'
      @_hash['notes'] = 'notes'
      @_hash['etid'] = 'etid'
      @_hash
    end

    def initialize(account_identifier = nil,
                   amount = nil,
                   customer_identifier = nil,
                   send_email = nil,
                   utid = nil,
                   campaign = nil,
                   email_subject = nil,
                   external_ref_id = nil,
                   message = nil,
                   recipient = nil,
                   sender = nil,
                   notes = nil,
                   etid = nil)
      @account_identifier = account_identifier
      @amount = amount
      @customer_identifier = customer_identifier
      @send_email = send_email
      @utid = utid
      @campaign = campaign
      @email_subject = email_subject
      @external_ref_id = external_ref_id
      @message = message
      @recipient = recipient
      @sender = sender
      @notes = notes
      @etid = etid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_identifier = hash['accountIdentifier']
      amount = hash['amount']
      customer_identifier = hash['customerIdentifier']
      send_email = hash['sendEmail']
      utid = hash['utid']
      campaign = hash['campaign']
      email_subject = hash['emailSubject']
      external_ref_id = hash['externalRefID']
      message = hash['message']
      recipient = NameEmailModel.from_hash(hash['recipient']) if
        hash['recipient']
      sender = NameEmailModel.from_hash(hash['sender']) if hash['sender']
      notes = hash['notes']
      etid = hash['etid']

      # Create object from extracted values.
      CreateOrderRequestModel.new(account_identifier,
                                  amount,
                                  customer_identifier,
                                  send_email,
                                  utid,
                                  campaign,
                                  email_subject,
                                  external_ref_id,
                                  message,
                                  recipient,
                                  sender,
                                  notes,
                                  etid)
    end
  end
end
