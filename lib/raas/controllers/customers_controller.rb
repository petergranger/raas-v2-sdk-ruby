# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # CustomersController
  class CustomersController < BaseController
    @instance = CustomersController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Creates a new customer
    # @param [CreateCustomerRequestModel] body Required parameter: Request
    # Body
    # @return CustomerModel response from the API call
    def create_customer(body)
      begin
        @logger.info("create_customer called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for create_customer.")
        validate_parameters(
          'body' => body
        )
        # Prepare query url.
        @logger.info("Preparing query URL for create_customer.")
        _query_builder = Configuration.get_base_uri
        _query_builder << '/customers'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_customer.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_customer.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_customer')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_customer.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create_customer.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        CustomerModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Retrieves all customers under the platform
    # @return List of CustomerModel response from the API call
    def get_all_customers
      begin
        @logger.info("get_all_customers called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_all_customers.")
        _query_builder = Configuration.get_base_uri
        _query_builder << '/customers'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_all_customers.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_all_customers.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_all_customers')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_all_customers.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_all_customers.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        decoded.map { |element| CustomerModel.from_hash(element) }

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Retrieves a single customer
    # @param [String] customer_identifier Required parameter: Customer
    # Identifier
    # @return CustomerModel response from the API call
    def get_customer(customer_identifier)
      begin
        @logger.info("get_customer called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for get_customer.")
        validate_parameters(
          'customer_identifier' => customer_identifier
        )
        # Prepare query url.
        @logger.info("Preparing query URL for get_customer.")
        _query_builder = Configuration.get_base_uri
        _query_builder << '/customers/{customerIdentifier}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'customerIdentifier' => customer_identifier
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_customer.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_customer.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_customer')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_customer.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_customer.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        CustomerModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
