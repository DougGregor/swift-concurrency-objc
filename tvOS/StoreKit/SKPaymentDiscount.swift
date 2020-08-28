
@available(tvOS 12.2, *)
class SKPaymentDiscount : NSObject {
  @available(tvOS 12.2, *)
  init(identifier: String, keyIdentifier: String, nonce: UUID, signature: String, timestamp: NSNumber)
  @available(tvOS 12.2, *)
  var identifier: String { get }
  @available(tvOS 12.2, *)
  var keyIdentifier: String { get }
  @available(tvOS 12.2, *)
  var nonce: UUID { get }
  @available(tvOS 12.2, *)
  var signature: String { get }
  @available(tvOS 12.2, *)
  @NSCopying var timestamp: NSNumber { get }
}
