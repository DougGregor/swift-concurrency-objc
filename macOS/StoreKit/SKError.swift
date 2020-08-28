
@available(macOS 10.7, *)
let SKErrorDomain: String
@available(macOS 10.7, *)
struct SKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: SKError.Code { get }
  static var clientInvalid: SKError.Code { get }
  static var paymentCancelled: SKError.Code { get }
  static var paymentInvalid: SKError.Code { get }
  static var paymentNotAllowed: SKError.Code { get }
  @available(macOS 10.15, *)
  static var storeProductNotAvailable: SKError.Code { get }
  @available(macOS 11.0, *)
  static var cloudServicePermissionDenied: SKError.Code { get }
  @available(macOS 11.0, *)
  static var cloudServiceNetworkConnectionFailed: SKError.Code { get }
  @available(macOS 11.0, *)
  static var cloudServiceRevoked: SKError.Code { get }
  @available(macOS 10.14.4, *)
  static var privacyAcknowledgementRequired: SKError.Code { get }
  @available(macOS 10.14.4, *)
  static var unauthorizedRequestData: SKError.Code { get }
  @available(macOS 10.14.4, *)
  static var invalidOfferIdentifier: SKError.Code { get }
  @available(macOS 10.14.4, *)
  static var invalidSignature: SKError.Code { get }
  @available(macOS 10.14.4, *)
  static var missingOfferParams: SKError.Code { get }
  @available(macOS 10.14.4, *)
  static var invalidOfferPrice: SKError.Code { get }
  @available(macOS 10.14.4, *)
  static var overlayCancelled: SKError.Code { get }
  @available(macOS 11.0, *)
  static var ineligibleForOffer: SKError.Code { get }
}
