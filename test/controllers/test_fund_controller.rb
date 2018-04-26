# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class FundControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.fund
  end

  # Tests retrieving deposit information
  def test_test_get_deposit()
    # Parameters for the API call
    deposit_id = 'RAD-180426-5407'

    # Perform the API call through the SDK function
    result = self.class.controller.get_deposit(deposit_id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"referenceDepositID":"RAD-180426-5407","amount":1.25,"amountCharged":1.29,'\
      '"feePercent":3.5,"createdDate":"2018-04-26T18:56:28.28Z","status":"SUCCESS"'\
      ',"accountNumber":"A32386768"}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Tests adding funds to an account
  def test_test_add_funds()
    # Parameters for the API call
    body = DepositRequestModel.from_hash(JSON.parse(
      '{"accountIdentifier":"sdkautotest5","amount":1.25,"creditCardToken":"56ac1a'\
      '30-6ba2-4047-9b8c-70f97a5502c5","customerIdentifier":"sdkautotest4"}'
      ))

    # Perform the API call through the SDK function
    result = self.class.controller.add_funds(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"referenceDepositID":"RAD-180426-5407","amount":1.25,"amountCharged":1.29,'\
      '"feePercent":3.5,"createdDate":"2018-04-26T18:56:28.28Z","status":"SUCCESS"'\
      ',"accountNumber":"A32386768"}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Tests retrieving all credit cards for a platform
  def test_test_get_credit_cards()

    # Perform the API call through the SDK function
    result = self.class.controller.get_credit_cards()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '[{"customerIdentifier":"sdkautotest4","accountIdentifier":"sdkautotest5","t'\
      'oken":"56ac1a30-6ba2-4047-9b8c-70f97a5502c5","label":"SDK Auto Testing Card'\
      ' 1","lastFourDigits":"4444","expirationDate":"2020-01","status":"ACTIVE","c'\
      'reatedDate":"2018-04-26T18:52:17.575Z","activationDate":"2018-04-26T18:52:1'\
      '7.575Z","contactInformation":[{"fullName":"Test User","emailAddress":"test@'\
      'example.com"},{"fullName":"Test Man Two","emailAddress":"test2@example.com"'\
      '}],"accountNumber":"A32386768"}]'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Tests retrieving a single credit card
  def test_test_get_credit_card()
    # Parameters for the API call
    token = '56ac1a30-6ba2-4047-9b8c-70f97a5502c5'

    # Perform the API call through the SDK function
    result = self.class.controller.get_credit_card(token)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"customerIdentifier":"sdkautotest4","accountIdentifier":"sdkautotest5","to'\
      'ken":"56ac1a30-6ba2-4047-9b8c-70f97a5502c5","label":"SDK Auto Testing Card '\
      '1","lastFourDigits":"4444","expirationDate":"2020-01","status":"ACTIVE","cr'\
      'eatedDate":"2018-04-26T18:52:17.575Z","activationDate":"2018-04-26T18:52:17'\
      '.575Z","contactInformation":[{"fullName":"Test User","emailAddress":"test@e'\
      'xample.com"},{"fullName":"Test Man Two","emailAddress":"test2@example.com"}'\
      '],"accountNumber":"A32386768"}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
