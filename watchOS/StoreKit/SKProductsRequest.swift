
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(watchOS 6.2, *)
  func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse)
}
@available(watchOS 6.2, *)
class SKProductsRequest : SKRequest {
  @available(watchOS 6.2, *)
  init(productIdentifiers: Set<String>)
}
@available(watchOS 6.2, *)
class SKProductsResponse : NSObject {
  @available(watchOS 6.2, *)
  var products: [SKProduct] { get }
  @available(watchOS 6.2, *)
  var invalidProductIdentifiers: [String] { get }
}
