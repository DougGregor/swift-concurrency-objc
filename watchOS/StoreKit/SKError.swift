
@available(watchOS 6.2, *)
let SKErrorDomain: String
@available(watchOS 6.2, *)
struct SKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: SKError.Code { get }
  static var clientInvalid: SKError.Code { get }
  static var paymentCancelled: SKError.Code { get }
  static var paymentInvalid: SKError.Code { get }
  static var paymentNotAllowed: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var storeProductNotAvailable: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var cloudServicePermissionDenied: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var cloudServiceNetworkConnectionFailed: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var cloudServiceRevoked: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var privacyAcknowledgementRequired: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var unauthorizedRequestData: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var invalidOfferIdentifier: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var invalidSignature: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var missingOfferParams: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var invalidOfferPrice: SKError.Code { get }
  @available(watchOS 6.2, *)
  static var overlayCancelled: SKError.Code { get }
  @available(watchOS 7.0, *)
  static var ineligibleForOffer: SKError.Code { get }
  @available(watchOS 7.0, *)
  static var unsupportedPlatform: SKError.Code { get }
}
