# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # StatusController
  class StatusController < BaseController
    @instance = StatusController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieves system status
    # @return SystemStatusResponseModel response from the API call
    def get_system_status
      begin
        @logger.info("get_system_status called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_system_status.")
        _query_builder = Configuration.get_base_uri
        _query_builder << '/pulse'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_system_status.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_system_status.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        _context = execute_request(_request, name: 'get_system_status')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_system_status.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_system_status.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        SystemStatusResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
