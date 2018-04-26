# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class AccountsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.accounts
  end

  # Tests retrieving all accounts under a specific customer
  def test_test_get_all_customer_accounts()
    # Parameters for the API call
    customer_identifier = 'sdkautotest1'

    # Perform the API call through the SDK function
    result = self.class.controller.get_accounts_by_customer(customer_identifier)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '[{"accountIdentifier":"sdkautotest3","accountNumber":"A01335766","displayNa'\
      'me":"SDK Auto Testing 3","createdAt":"2018-04-26T18:16:51.652Z","status":"A'\
      'CTIVE"},{"accountIdentifier":"sdkautotest2","accountNumber":"A11720237","di'\
      'splayName":"SDK Auto Testing 2","createdAt":"2018-04-26T18:13:45.196Z","sta'\
      'tus":"ACTIVE"}]'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Tests retrieving all accounts
  def test_test_get_all_accounts()

    # Perform the API call through the SDK function
    result = self.class.controller.get_all_accounts()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '[{"accountIdentifier":"sdkautotest2","accountNumber":"A11720237","displayNa'\
      'me":"SDK Auto Testing 2","currencyCode":"USD","currentBalance":0,"createdAt'\
      '":"2018-04-26T18:13:45.196Z","status":"ACTIVE","contactEmail":"test@example'\
      '.com"}]'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Tests retrieving a single account
  def test_test_get_single_account()
    # Parameters for the API call
    account_identifier = 'sdkautotest2'

    # Perform the API call through the SDK function
    result = self.class.controller.get_account(account_identifier)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"accountIdentifier":"sdkautotest2","accountNumber":"A11720237","displayNam'\
      'e":"SDK Auto Testing 2","currencyCode":"USD","currentBalance":0,"createdAt"'\
      ':"2018-04-26T18:13:45.196Z","status":"ACTIVE","contactEmail":"test@example.'\
      'com"}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
