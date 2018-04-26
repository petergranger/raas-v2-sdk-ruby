# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class OrdersControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.orders
  end

  # Tests retrieving a single order
  def test_test_get_order()
    # Parameters for the API call
    reference_order_id = 'RA180426-1401-64'

    # Perform the API call through the SDK function
    result = self.class.controller.get_order(reference_order_id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"referenceOrderID":"RA180426-1401-64","customerIdentifier":"sdkautotest4",'\
      '"accountIdentifier":"sdkautotest5","accountNumber":"A32386768","amountCharg'\
      'ed":{"value":1,"currencyCode":"USD","total":1},"marginShare":{"value":0,"cu'\
      'rrencyCode":"USD"},"denomination":{"value":1,"currencyCode":"USD"},"utid":"'\
      'U561593","rewardName":"Reward Link","sender":{"firstName":"","lastName":"",'\
      '"email":""},"recipient":{"email":"","firstName":"","lastName":""},"sendEmai'\
      'l":false,"status":"COMPLETE","createdAt":"2018-04-26T20:08:59.624Z","reward'\
      '":{"credentials":{"Redemption URL":"https://sandbox.rewardlink.io/r/1/ed0Ht'\
      'zSblNV6oFddNnnlf68eXzGQoREvcxwxu_Vi5Wk"},"credentialList":[{"label":"Redemp'\
      'tion URL","value":"https://sandbox.rewardlink.io/r/1/ed0HtzSblNV6oFddNnnlf6'\
      '8eXzGQoREvcxwxu_Vi5Wk","type":"url"}],"redemptionInstructions":"<p>&bull; C'\
      'lick on the redemption link above to activate your Reward Link.<br />\\r\\n'\
      '&bull; Next, you will be able to spend your balance on retail gift cards.</'\
      'p>\\r\\n\\r\\n<p>If you don&#39;t want to spend your entire Reward Link val'\
      'ue right away, save the email or URL and return via the redemption link - y'\
      'our value will be waiting to be spent. This allows you to store the balance'\
      ' to redeem at another time.</p>\\r\\n"}}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Tests placing an order with the minimum parameters required
  def test_test_place_order_with_minimum_criteria()
    # Parameters for the API call
    body = CreateOrderRequestModel.from_hash(JSON.parse(
      '{"accountIdentifier":"sdkautotest5","amount":1.00,"customerIdentifier":"sdk'\
      'autotest4","sendEmail":false,"utid":"U561593"}'
      ))

    # Perform the API call through the SDK function
    result = self.class.controller.create_order(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 201)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"referenceOrderID":"RA180426-1401-64","customerIdentifier":"sdkautotest4",'\
      '"accountIdentifier":"sdkautotest5","accountNumber":"A32386768","amountCharg'\
      'ed":{"value":1,"currencyCode":"USD","total":1},"marginShare":{"value":0,"cu'\
      'rrencyCode":"USD"},"denomination":{"value":1,"currencyCode":"USD"},"utid":"'\
      'U561593","rewardName":"Reward Link","sender":{"firstName":"","lastName":"",'\
      '"email":""},"recipient":{"email":"","firstName":"","lastName":""},"sendEmai'\
      'l":false,"status":"COMPLETE","createdAt":"2018-04-26T20:08:59.624Z","reward'\
      '":{"credentials":{"Redemption URL":"https://sandbox.rewardlink.io/r/1/ed0Ht'\
      'zSblNV6oFddNnnlf68eXzGQoREvcxwxu_Vi5Wk"},"credentialList":[{"label":"Redemp'\
      'tion URL","value":"https://sandbox.rewardlink.io/r/1/ed0HtzSblNV6oFddNnnlf6'\
      '8eXzGQoREvcxwxu_Vi5Wk","type":"url"}],"redemptionInstructions":"<p>&bull; C'\
      'lick on the redemption link above to activate your Reward Link.<br />\\r\\n'\
      '&bull; Next, you will be able to spend your balance on retail gift cards.</'\
      'p>\\r\\n\\r\\n<p>If you don&#39;t want to spend your entire Reward Link val'\
      'ue right away, save the email or URL and return via the redemption link - y'\
      'our value will be waiting to be spent. This allows you to store the balance'\
      ' to redeem at another time.</p>\\r\\n"}}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

end
