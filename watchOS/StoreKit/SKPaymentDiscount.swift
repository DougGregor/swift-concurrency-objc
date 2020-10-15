
@available(watchOS 6.2, *)
class SKPaymentDiscount : NSObject {
  @available(watchOS 6.2, *)
  init(identifier: String, keyIdentifier: String, nonce: UUID, signature: String, timestamp: NSNumber)
  @available(watchOS 6.2, *)
  var identifier: String { get }
  @available(watchOS 6.2, *)
  var keyIdentifier: String { get }
  @available(watchOS 6.2, *)
  var nonce: UUID { get }
  @available(watchOS 6.2, *)
  var signature: String { get }
  @available(watchOS 6.2, *)
  @NSCopying var timestamp: NSNumber { get }
}
