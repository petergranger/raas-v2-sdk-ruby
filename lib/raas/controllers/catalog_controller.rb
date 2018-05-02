# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # CatalogController
  class CatalogController < BaseController
    @instance = CatalogController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieves a platform's catalog
    # @return CatalogModel response from the API call
    def get_catalog
      begin
        @logger.info("get_catalog called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_catalog.")
        _query_builder = Configuration.get_base_uri
        _query_builder += '/catalogs'
        _query_url = APIHelper.clean_url _query_builder

        # Prepare headers.
        @logger.info("Preparing headers for get_catalog.")
        _headers = {
          'accept' => 'application/json'
        }

        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_catalog.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_catalog')

        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_catalog.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)

        # Return appropriate response type.
        @logger.info("Returning response for get_catalog.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        CatalogModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
