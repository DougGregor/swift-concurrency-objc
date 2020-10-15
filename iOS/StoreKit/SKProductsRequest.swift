
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(iOS 3.0, *)
  @asyncHandler func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse)
}
@available(iOS 3.0, *)
class SKProductsRequest : SKRequest {
  @available(iOS 3.0, *)
  init(productIdentifiers: Set<String>)
}
@available(iOS 3.0, *)
class SKProductsResponse : NSObject {
  @available(iOS 3.0, *)
  var products: [SKProduct] { get }
  @available(iOS 3.0, *)
  var invalidProductIdentifiers: [String] { get }
}
