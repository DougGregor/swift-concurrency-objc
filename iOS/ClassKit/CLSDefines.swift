
@available(iOS 11.3, *)
let CLSErrorCodeDomain: String
@available(iOS 11.3, *)
struct CLSError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var none: CLSError.Code { get }
  static var classKitUnavailable: CLSError.Code { get }
  static var invalidArgument: CLSError.Code { get }
  static var invalidModification: CLSError.Code { get }
  static var authorizationDenied: CLSError.Code { get }
  static var databaseInaccessible: CLSError.Code { get }
  static var limits: CLSError.Code { get }
  static var invalidCreate: CLSError.Code { get }
  static var invalidUpdate: CLSError.Code { get }
  static var partialFailure: CLSError.Code { get }
}
@available(iOS 11.3, *)
struct CLSErrorUserInfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CLSErrorUserInfoKey {
  @available(iOS 11.3, *)
  static let objectKey: CLSErrorUserInfoKey
  @available(iOS 11.3, *)
  static let underlyingErrorsKey: CLSErrorUserInfoKey
}
@available(iOS 11.3, *)
struct CLSPredicateKeyPath : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CLSPredicateKeyPath {
  @available(iOS 11.3, *)
  static let dateCreated: CLSPredicateKeyPath
  @available(iOS 11.3, *)
  static let identifier: CLSPredicateKeyPath
  @available(iOS 11.3, *)
  static let title: CLSPredicateKeyPath
  @available(iOS 11.3, *)
  static let universalLinkURL: CLSPredicateKeyPath
  @available(iOS 11.3, *)
  static let topic: CLSPredicateKeyPath
  @available(iOS 11.3, *)
  static let parent: CLSPredicateKeyPath
}
