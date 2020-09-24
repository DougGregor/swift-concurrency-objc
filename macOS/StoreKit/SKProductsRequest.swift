
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(macOS 10.7, *)
  @asyncHandler func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse)
}
@available(macOS 10.7, *)
class SKProductsRequest : SKRequest {
  @available(macOS 10.7, *)
  init(productIdentifiers: Set<String>)
}
@available(macOS 10.7, *)
class SKProductsResponse : NSObject {
  @available(macOS 10.7, *)
  var products: [SKProduct] { get }
  @available(macOS 10.7, *)
  var invalidProductIdentifiers: [String] { get }
}
