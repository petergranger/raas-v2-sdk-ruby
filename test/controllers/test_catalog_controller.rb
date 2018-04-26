# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class CatalogControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.catalog
  end

  # Tests if we can successfully retrieve a platform's catalog
  def test_test_retrieve_catalog()

    # Perform the API call through the SDK function
    result = self.class.controller.get_catalog()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"catalogName":"TestCatalog","brands":[{"brandKey":"B916708","brandName":"A'\
      'mazon.com","disclaimer":"disclaimer","description":"desc","shortDescription'\
      '":"short desc","terms":"terms","createdDate":"2016-06-17T16:52:24Z","lastUp'\
      'dateDate":"2017-10-23T22:18:51Z","imageUrls":{"80w-326ppi":"https://d30s7yz'\
      'k2az89n.cloudfront.net/images/brands/b916708-80w-326ppi.png","130w-326ppi":'\
      '"https://d30s7yzk2az89n.cloudfront.net/images/brands/b916708-130w-326ppi.pn'\
      'g","200w-326ppi":"https://d30s7yzk2az89n.cloudfront.net/images/brands/b9167'\
      '08-200w-326ppi.png","278w-326ppi":"https://d30s7yzk2az89n.cloudfront.net/im'\
      'ages/brands/b916708-278w-326ppi.png","300w-326ppi":"https://d30s7yzk2az89n.'\
      'cloudfront.net/images/brands/b916708-300w-326ppi.png","1200w-326ppi":"https'\
      '://d30s7yzk2az89n.cloudfront.net/images/brands/b916708-1200w-326ppi.png"},"'\
      'status":"active","items":[{"utid":"U666425","rewardName":"Amazon.com Gift C'\
      'ard","currencyCode":"USD","status":"active","valueType":"VARIABLE_VALUE","r'\
      'ewardType":"gift card","minValue":0.01,"maxValue":2000,"createdDate":"2016-'\
      '06-17T17:38:45.294Z","lastUpdateDate":"2017-12-15T01:27:49.607Z","countries'\
      '":["US"]}]},{"brandKey":"B725361","brandName":"AMC Theatres®","disclaimer":'\
      '"discl","description":"desc","shortDescription":"short desc","terms":"terms'\
      '","createdDate":"2016-06-23T21:53:45Z","lastUpdateDate":"2016-07-25T22:41:1'\
      '1Z","imageUrls":{"80w-326ppi":"https://d30s7yzk2az89n.cloudfront.net/images'\
      '/brands/b725361-80w-326ppi.png","130w-326ppi":"https://d30s7yzk2az89n.cloud'\
      'front.net/images/brands/b725361-130w-326ppi.png","200w-326ppi":"https://d30'\
      's7yzk2az89n.cloudfront.net/images/brands/b725361-200w-326ppi.png","278w-326'\
      'ppi":"https://d30s7yzk2az89n.cloudfront.net/images/brands/b725361-278w-326p'\
      'pi.png","300w-326ppi":"https://d30s7yzk2az89n.cloudfront.net/images/brands/'\
      'b725361-300w-326ppi.png","1200w-326ppi":"https://d30s7yzk2az89n.cloudfront.'\
      'net/images/brands/b725361-1200w-326ppi.png"},"status":"active","items":[{"u'\
      'tid":"U154092","rewardName":"AMC® Gift Card $10.00","currencyCode":"USD","s'\
      'tatus":"active","valueType":"FIXED_VALUE","rewardType":"gift card","faceVal'\
      'ue":10,"createdDate":"2016-07-27T02:54:30.142Z","lastUpdateDate":"2016-09-2'\
      '1T20:59:01.874Z","countries":["US"]},{"utid":"U913336","rewardName":"AMC® G'\
      'ift Card $25.00","currencyCode":"USD","status":"active","valueType":"FIXED_'\
      'VALUE","rewardType":"gift card","faceValue":25,"createdDate":"2016-07-27T02'\
      ':55:37.899Z","lastUpdateDate":"2016-10-17T20:55:00.386Z","countries":["US"]'\
      '},{"utid":"U652361","rewardName":"AMC® Gift Card $50.00","currencyCode":"US'\
      'D","status":"active","valueType":"FIXED_VALUE","rewardType":"gift card","fa'\
      'ceValue":50,"createdDate":"2016-07-27T02:56:53.391Z","lastUpdateDate":"2016'\
      '-09-21T20:59:16.283Z","countries":["US"]}]}]}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

end
