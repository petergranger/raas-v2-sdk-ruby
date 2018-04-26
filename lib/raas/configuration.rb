# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas

  Logging.logger.root.appenders = Logging.appenders.stdout
  Logging.logger.root.level = :info

  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # Set the array parameter serialization method.
    # (allowed: indexed, unindexed, plain, csv, tsv, psv)
    @array_serialization = 'indexed'

    # An enum for SDK environments.
    class Environment
      #SANDBOX: The sandbox environment does not use real money and can be used for testing.
      #PRODUCTION: The production environment uses real money and is for live transactions.
      ENVIRONMENT = [SANDBOX = 0, PRODUCTION = 1].freeze
    end

    # An enum for API servers.
    class Server
      SERVER = [DEFAULT = 0].freeze
    end

    # The environment in which the SDK is running.
    @environment = Environment::SANDBOX

    # Platform Name (Provided by Tango Card)
    @platform_name = 'QAPlatform2'

    # Platform Key (Provided by Tango Card)
    @platform_key = 'apYPfT6HNONpDRUj3CLGWYt7gvIHONpDRUYPfT6Hj'

    # All the environments the SDK can run in.
    @environments = {
      Environment::SANDBOX => {
        Server::DEFAULT => 'https://integration-api.tangocard.com/raas/v2'
      },
      Environment::PRODUCTION => {
        Server::DEFAULT => 'https://api.tangocard.com/raas/v2'
      }
    }

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def self.get_base_uri(server = Server::DEFAULT)
      environments[environment][server].clone
    end

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :environment
      attr_accessor :environments
      attr_accessor :platform_name
      attr_accessor :platform_key
    end
  end
end
