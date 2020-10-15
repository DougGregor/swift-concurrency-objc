
@available(watchOS 3.0, *)
let PKPassKitErrorDomain: String
@available(watchOS 3.0, *)
struct PKPassKitError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknownError: PKPassKitError.Code { get }
  static var invalidDataError: PKPassKitError.Code { get }
  static var unsupportedVersionError: PKPassKitError.Code { get }
  static var invalidSignature: PKPassKitError.Code { get }
  static var notEntitledError: PKPassKitError.Code { get }
}
@available(watchOS 4.0, *)
let PKPaymentErrorDomain: String
@available(watchOS 4.0, *)
struct PKPaymentError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknownError: PKPaymentError.Code { get }
  static var shippingContactInvalidError: PKPaymentError.Code { get }
  static var billingContactInvalidError: PKPaymentError.Code { get }
  static var shippingAddressUnserviceableError: PKPaymentError.Code { get }
}
struct PKPaymentErrorKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPaymentErrorKey {
  @available(watchOS 4.0, *)
  static let contactFieldUserInfoKey: PKPaymentErrorKey
  @available(watchOS 4.0, *)
  static let postalAddressUserInfoKey: PKPaymentErrorKey
}
@available(watchOS 6.0, *)
enum PKAddPaymentPassError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unsupported
  case userCancelled
  case systemCancelled
}
@available(watchOS 6.4, *)
let PKAddSecureElementPassErrorDomain: String
@available(watchOS 6.4, *)
struct PKAddSecureElementPassError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknownError: PKAddSecureElementPassError.Code { get }
  static var userCanceledError: PKAddSecureElementPassError.Code { get }
  static var unavailableError: PKAddSecureElementPassError.Code { get }
  static var invalidConfigurationError: PKAddSecureElementPassError.Code { get }
  static var deviceNotSupportedError: PKAddSecureElementPassError.Code { get }
  static var deviceNotReadyError: PKAddSecureElementPassError.Code { get }
}
