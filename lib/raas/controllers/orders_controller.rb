# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # OrdersController
  class OrdersController < BaseController
    @instance = OrdersController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieves a single order
    # @param [String] reference_order_id Required parameter: Reference Order
    # ID
    # @return OrderModel response from the API call
    def get_order(reference_order_id)
      begin
        @logger.info("get_order called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for get_order.")
        validate_parameters(
          'reference_order_id' => reference_order_id
        )
        # Prepare query url.
        @logger.info("Preparing query URL for get_order.")
        _query_builder = Configuration.get_base_uri
        _query_builder << '/orders/{referenceOrderID}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'referenceOrderID' => reference_order_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_order.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_order.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_order')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_order.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_order.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        OrderModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Resends an order
    # @param [String] reference_order_id Required parameter: The order's
    # reference order id
    # @return ResendOrderResponseModel response from the API call
    def create_resend_order(reference_order_id)
      begin
        @logger.info("create_resend_order called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for create_resend_order.")
        validate_parameters(
          'reference_order_id' => reference_order_id
        )
        # Prepare query url.
        @logger.info("Preparing query URL for create_resend_order.")
        _query_builder = Configuration.get_base_uri
        _query_builder << '/orders/{referenceOrderID}/resends'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'referenceOrderID' => reference_order_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_resend_order.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_resend_order.')
        _request = @http_client.post(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_resend_order')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_resend_order.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create_resend_order.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        ResendOrderResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Retrieves a list of orders under a platform
    # @param [String] account_identifier Optional parameter: Account
    # identifier
    # @param [String] customer_identifier Optional parameter: Customer
    # identifier
    # @param [String] external_ref_id Optional parameter: External reference
    # id
    # @param [DateTime] start_date Optional parameter: The start date
    # @param [DateTime] end_date Optional parameter: The end date
    # @param [Integer] elements_per_block Optional parameter: The number of
    # elements per page
    # @param [Integer] page Optional parameter: The page number to return
    # @return GetOrdersResponseModel response from the API call
    def get_orders(options = {})
      begin
        @logger.info("get_orders called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_orders.")
        _query_builder = Configuration.get_base_uri
        _query_builder << '/orders'
        _query_builder = APIHelper.append_url_with_query_parameters(
          _query_builder,
          {
            'accountIdentifier' => options['account_identifier'],
            'customerIdentifier' => options['customer_identifier'],
            'externalRefID' => options['external_ref_id'],
            'startDate' => options['start_date'],
            'endDate' => options['end_date'],
            'elementsPerBlock' => options['elements_per_block'],
            'page' => options['page']
          },
          array_serialization: Configuration.array_serialization
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_orders.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_orders.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_orders')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_orders.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_orders.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        GetOrdersResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Places an order
    # @param [CreateOrderRequestModel] body Required parameter: A
    # CreateOrderRequest object
    # @return OrderModel response from the API call
    def create_order(body)
      begin
        @logger.info("create_order called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for create_order.")
        validate_parameters(
          'body' => body
        )
        # Prepare query url.
        @logger.info("Preparing query URL for create_order.")
        _query_builder = Configuration.get_base_uri
        _query_builder << '/orders'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_order.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_order.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_order')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_order.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create_order.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        OrderModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
