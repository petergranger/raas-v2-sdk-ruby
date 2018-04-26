# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  #  raas client class.
  class RaasClient
    # Singleton access to status controller.
    # @return [StatusController] Returns the controller instance.
    def status
      StatusController.instance
    end

    # Singleton access to accounts controller.
    # @return [AccountsController] Returns the controller instance.
    def accounts
      AccountsController.instance
    end

    # Singleton access to orders controller.
    # @return [OrdersController] Returns the controller instance.
    def orders
      OrdersController.instance
    end

    # Singleton access to fund controller.
    # @return [FundController] Returns the controller instance.
    def fund
      FundController.instance
    end

    # Singleton access to exchange_rates controller.
    # @return [ExchangeRatesController] Returns the controller instance.
    def exchange_rates
      ExchangeRatesController.instance
    end

    # Singleton access to customers controller.
    # @return [CustomersController] Returns the controller instance.
    def customers
      CustomersController.instance
    end

    # Singleton access to catalog controller.
    # @return [CatalogController] Returns the controller instance.
    def catalog
      CatalogController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(platform_name: 'QAPlatform2',
                   platform_key: 'apYPfT6HNONpDRUj3CLGWYt7gvIHONpDRUYPfT6Hj')
      Configuration.platform_name = platform_name if
        platform_name
      Configuration.platform_key = platform_key if
        platform_key
    end
  end
end
