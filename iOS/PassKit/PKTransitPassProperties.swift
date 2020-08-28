
@available(iOS 11.3, *)
class PKTransitPassProperties : NSObject {
  convenience init?(for pass: PKPass)
  @NSCopying var transitBalance: NSDecimalNumber { get }
  var transitBalanceCurrencyCode: String { get }
  var isInStation: Bool { get }
  var isBlacklisted: Bool { get }
  var expirationDate: Date? { get }
}
