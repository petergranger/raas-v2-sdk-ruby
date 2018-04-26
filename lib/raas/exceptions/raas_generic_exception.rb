# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # RaaS API Generic Exception
  class RaasGenericException < APIException
    # Request timestamp
    # @return [DateTime]
    attr_accessor :timestamp

    # Request ID
    # @return [String]
    attr_accessor :request_id

    # Request Path
    # @return [String]
    attr_accessor :path

    # HTTP Code
    # @return [Integer]
    attr_accessor :http_code

    # HTTP Phrase
    # @return [String]
    attr_accessor :http_phrase

    # Error Message
    # @return [String]
    attr_accessor :message

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpContext] The HttpContext of the API call.
    def initialize(reason, context)
      super(reason, context)
      hash = APIHelper.json_deserialize(@context.response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @timestamp = DateTime.rfc3339(hash['timestamp']) if hash['timestamp']
      @request_id = hash['requestId']
      @path = hash['path']
      @http_code = hash['httpCode']
      @http_phrase = hash['httpPhrase']
      @message = hash['message']
    end
  end
end
