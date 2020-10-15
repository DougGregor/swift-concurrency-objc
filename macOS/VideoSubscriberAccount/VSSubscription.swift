
enum VSSubscriptionAccessLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case freeWithAccount
  case paid
}
class VSSubscription : NSObject {
  var expirationDate: Date!
  var accessLevel: VSSubscriptionAccessLevel
  var tierIdentifiers: [String]!
  var billingIdentifier: String?
}
