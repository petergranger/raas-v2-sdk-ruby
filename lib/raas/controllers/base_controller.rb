# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Base controller.
  class BaseController
    attr_accessor :http_client, :http_call_back

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client || FaradayClient.new(timeout: 60)
      @http_call_back = http_call_back

      @global_headers = {
        'user-agent' => 'V2NGSDK'
      }
      @logger = Logging.logger[self]
      #@logger.info("Instantiated controller class.")
    end

    def validate_parameters(args)
      args.each do |_name, value|
        if value.nil?
          raise ArgumentError, "Required parameter #{_name} cannot be nil."
        end
      end
    end

    def execute_request(request, binary: false, name: nil)
      @logger.info("Calling the on_before_request method of http_call_back for #{name}.") if @http_call_back
      @http_call_back.on_before_request(request) if @http_call_back

      @logger.info("Merging global headers with endpoint headers for #{name}.")
      APIHelper.clean_hash(request.headers)
      request.headers = @global_headers.clone.merge(request.headers)

      @logger.debug("Raw request for #{name} is: #{request.inspect}")
      response = if binary
                   @http_client.execute_as_binary(request)
                 else
                   @http_client.execute_as_string(request)
                 end
      @logger.debug("Raw response for #{name} is: #{response.inspect}")
      @logger.info("Wrapping request and response in a context object for #{name}.")
      context = HttpContext.new(request, response)

      @logger.info("Calling on_after_response method of http_call_back for #{name}.") if @http_call_back
      @http_call_back.on_after_response(context) if @http_call_back

      context
    end

    def validate_response(context)
      raise RaasClientException.new 'Bad Request', context if
      context.response.status_code == 400
      raise RaasGenericException.new 'Unauthorized - Invalid Credentials', context if
      context.response.status_code == 401
      raise RaasClientException.new 'Forbidden', context if
      context.response.status_code == 403
      raise RaasGenericException.new 'Not Found', context if
      context.response.status_code == 404
      raise RaasClientException.new 'Conflict', context if
      context.response.status_code == 409
      raise RaasServerException.new 'Internal Server Error - Retry Later', context if
      context.response.status_code == 500
      raise RaasServerException.new 'Service Unavailable - Retry Later', context if
      context.response.status_code == 503
      raise RaasGenericException.new 'API Error', context unless
        context.response.status_code.between?(200, 208) # [200,208] = HTTP OK
    end
  end
end
