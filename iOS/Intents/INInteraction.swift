
@available(iOS 10.0, *)
enum INIntentHandlingStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case deferredToApplication
  @available(iOS 12.0, *)
  case userConfirmationRequired
}
@available(iOS 10.0, *)
enum INInteractionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case outgoing
  case incoming
}
@available(iOS 10.0, *)
class INInteraction : NSObject, NSSecureCoding, NSCopying {
  init(intent: INIntent, response: INIntentResponse?)
  func donate(completion: ((Error?) -> Void)? = nil)
  class func deleteAll(completion: ((Error?) -> Void)? = nil)
  class func delete(with identifiers: [String], completion: ((Error?) -> Void)? = nil)
  class func delete(with groupIdentifier: String, completion: ((Error?) -> Void)? = nil)
  @NSCopying var intent: INIntent { get }
  @NSCopying var intentResponse: INIntentResponse? { get }
  var intentHandlingStatus: INIntentHandlingStatus { get }
  var direction: INInteractionDirection
  var dateInterval: DateInterval?
  var identifier: String
  var groupIdentifier: String?
}
