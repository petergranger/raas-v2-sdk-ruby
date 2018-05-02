# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # FundController
  class FundController < BaseController
    @instance = FundController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Unregister a credit card
    # @param [UnregisterCreditCardRequestModel] body Required parameter:
    # Example:
    # @return UnregisterCreditCardResponseModel response from the API call
    def create_unregister_credit_card(body)
      begin
        @logger.info("create_unregister_credit_card called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for create_unregister_credit_card.")
        validate_parameters(
          'body' => body
        )
        # Prepare query url.
        @logger.info("Preparing query URL for create_unregister_credit_card.")
        _query_builder = Configuration.get_base_uri
        _query_builder += '/creditCardUnregisters'
        _query_url = APIHelper.clean_url _query_builder

        # Prepare headers.
        @logger.info("Preparing headers for create_unregister_credit_card.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }

        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_unregister_credit_card.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_unregister_credit_card')

        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_unregister_credit_card.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)

        # Return appropriate response type.
        @logger.info("Returning response for create_unregister_credit_card.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        UnregisterCreditCardResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Get details for a specific credit card deposit
    # @param [String] deposit_id Required parameter: The reference deposit id
    # @return GetDepositResponseModel response from the API call
    def get_deposit(deposit_id)
      begin
        @logger.info("get_deposit called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for get_deposit.")
        validate_parameters(
          'deposit_id' => deposit_id
        )
        # Prepare query url.
        @logger.info("Preparing query URL for get_deposit.")
        _query_builder = Configuration.get_base_uri
        _query_builder += '/creditCardDeposits/{depositId}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'depositId' => deposit_id
        )
        _query_url = APIHelper.clean_url _query_builder

        # Prepare headers.
        @logger.info("Preparing headers for get_deposit.")
        _headers = {
          'accept' => 'application/json'
        }

        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_deposit.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_deposit')

        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_deposit.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)

        # Return appropriate response type.
        @logger.info("Returning response for get_deposit.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        GetDepositResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Funds an account via credit card
    # @param [DepositRequestModel] body Required parameter: Example:
    # @return DepositResponseModel response from the API call
    def add_funds(body)
      begin
        @logger.info("add_funds called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for add_funds.")
        validate_parameters(
          'body' => body
        )
        # Prepare query url.
        @logger.info("Preparing query URL for add_funds.")
        _query_builder = Configuration.get_base_uri
        _query_builder += '/creditCardDeposits'
        _query_url = APIHelper.clean_url _query_builder

        # Prepare headers.
        @logger.info("Preparing headers for add_funds.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }

        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for add_funds.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'add_funds')

        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for add_funds.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)

        # Return appropriate response type.
        @logger.info("Returning response for add_funds.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        DepositResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Retrieves all credit cards registered on the platform
    # @return List of CreditCardModel response from the API call
    def get_credit_cards
      begin
        @logger.info("get_credit_cards called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_credit_cards.")
        _query_builder = Configuration.get_base_uri
        _query_builder += '/creditCards'
        _query_url = APIHelper.clean_url _query_builder

        # Prepare headers.
        @logger.info("Preparing headers for get_credit_cards.")
        _headers = {
          'accept' => 'application/json'
        }

        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_credit_cards.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_credit_cards')

        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_credit_cards.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)

        # Return appropriate response type.
        @logger.info("Returning response for get_credit_cards.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        decoded.map { |element| CreditCardModel.from_hash(element) }

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Retrieves details for a single credit card
    # @param [String] token Required parameter: Credit Card Token
    # @return CreditCardModel response from the API call
    def get_credit_card(token)
      begin
        @logger.info("get_credit_card called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for get_credit_card.")
        validate_parameters(
          'token' => token
        )
        # Prepare query url.
        @logger.info("Preparing query URL for get_credit_card.")
        _query_builder = Configuration.get_base_uri
        _query_builder += '/creditCards/{token}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'token' => token
        )
        _query_url = APIHelper.clean_url _query_builder

        # Prepare headers.
        @logger.info("Preparing headers for get_credit_card.")
        _headers = {
          'accept' => 'application/json'
        }

        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_credit_card.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_credit_card')

        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_credit_card.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)

        # Return appropriate response type.
        @logger.info("Returning response for get_credit_card.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        CreditCardModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Registers a new credit card
    # @param [CreateCreditCardRequestModel] body Required parameter: A
    # CreateCreditCardRequest object
    # @return CreditCardModel response from the API call
    def create_register_credit_card(body)
      begin
        @logger.info("create_register_credit_card called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for create_register_credit_card.")
        validate_parameters(
          'body' => body
        )
        # Prepare query url.
        @logger.info("Preparing query URL for create_register_credit_card.")
        _query_builder = Configuration.get_base_uri
        _query_builder += '/creditCards'
        _query_url = APIHelper.clean_url _query_builder

        # Prepare headers.
        @logger.info("Preparing headers for create_register_credit_card.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }

        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_register_credit_card.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_register_credit_card')

        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_register_credit_card.")
        unless _context.response.status_code.between?(200, 208)
          raise RaasGenericException.new(
            'API Error',
            _context
          )
        end
        validate_response(_context)

        # Return appropriate response type.
        @logger.info("Returning response for create_register_credit_card.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        CreditCardModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
