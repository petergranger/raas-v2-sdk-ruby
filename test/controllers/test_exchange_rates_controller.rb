# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class ExchangeRatesControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.exchange_rates
  end

  # Tests if we can successfully retrieve exchange rates
  def test_test_retrieve_exchange_rates()

    # Perform the API call through the SDK function
    result = self.class.controller.get_exchange_rates()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"disclaimer":"Exchange rates are provided here for reference. They are upd'\
      'ated at least once a day and may have changed by time of order.","exchangeR'\
      'ates":[{"lastModifiedDate":"2018-04-19T13:00:14.291","rewardCurrency":"EUR"'\
      ',"baseCurrency":"NZD","baseFx":0.59120},{"lastModifiedDate":"2018-04-19T13:'\
      '00:14.291","rewardCurrency":"USD","baseCurrency":"NZD","baseFx":0.73130},{"'\
      'lastModifiedDate":"2018-04-19T13:00:14.230","rewardCurrency":"INR","baseCur'\
      'rency":"AUD","baseFx":51.29066}]}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

end
