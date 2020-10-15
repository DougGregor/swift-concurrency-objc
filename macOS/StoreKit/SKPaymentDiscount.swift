
@available(macOS 10.14.4, *)
class SKPaymentDiscount : NSObject {
  @available(macOS 10.14.4, *)
  init(identifier: String, keyIdentifier: String, nonce: UUID, signature: String, timestamp: NSNumber)
  @available(macOS 10.14.4, *)
  var identifier: String { get }
  @available(macOS 10.14.4, *)
  var keyIdentifier: String { get }
  @available(macOS 10.14.4, *)
  var nonce: UUID { get }
  @available(macOS 10.14.4, *)
  var signature: String { get }
  @available(macOS 10.14.4, *)
  @NSCopying var timestamp: NSNumber { get }
}
