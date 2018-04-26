# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class CustomersControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.customers
  end

  # Tests retrieving all customers
  def test_test_get_all_customers()

    # Perform the API call through the SDK function
    result = self.class.controller.get_all_customers()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '[{"customerIdentifier":"sdkautotest1","displayName":"SDK Auto Testing 1","s'\
      'tatus":"active","createdAt":"2018-04-26T18:13:12.874Z","accounts":[{"accoun'\
      'tIdentifier":"sdkautotest3","accountNumber":"A01335766","displayName":"SDK '\
      'Auto Testing 3","createdAt":"2018-04-26T18:16:51.652Z","status":"ACTIVE"},{'\
      '"accountIdentifier":"sdkautotest2","accountNumber":"A11720237","displayName'\
      '":"SDK Auto Testing 2","createdAt":"2018-04-26T18:13:45.196Z","status":"ACT'\
      'IVE"}]}]'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Tests retrieving a single customer
  def test_test_get_customer()
    # Parameters for the API call
    customer_identifier = 'sdkautotest1'

    # Perform the API call through the SDK function
    result = self.class.controller.get_customer(customer_identifier)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"customerIdentifier":"sdkautotest1","displayName":"SDK Auto Testing 1","st'\
      'atus":"active","createdAt":"2018-04-26T18:13:12.874Z","accounts":[{"account'\
      'Identifier":"sdkautotest3","accountNumber":"A01335766","displayName":"SDK A'\
      'uto Testing 3","createdAt":"2018-04-26T18:16:51.652Z","status":"ACTIVE"},{"'\
      'accountIdentifier":"sdkautotest2","accountNumber":"A11720237","displayName"'\
      ':"SDK Auto Testing 2","createdAt":"2018-04-26T18:13:45.196Z","status":"ACTI'\
      'VE"}]}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
