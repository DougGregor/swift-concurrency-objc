
@available(iOS 11.0, *)
enum VSSubscriptionAccessLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case freeWithAccount
  case paid
}
@available(iOS 11.0, *)
class VSSubscription : NSObject {
  var expirationDate: Date!
  var accessLevel: VSSubscriptionAccessLevel
  var tierIdentifiers: [String]!
  @available(iOS 11.3, *)
  var billingIdentifier: String?
}
