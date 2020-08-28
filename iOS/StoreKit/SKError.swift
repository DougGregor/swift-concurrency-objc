
@available(iOS 3.0, *)
let SKErrorDomain: String
@available(iOS 3.0, *)
struct SKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: SKError.Code { get }
  static var clientInvalid: SKError.Code { get }
  static var paymentCancelled: SKError.Code { get }
  static var paymentInvalid: SKError.Code { get }
  static var paymentNotAllowed: SKError.Code { get }
  @available(iOS 3.0, *)
  static var storeProductNotAvailable: SKError.Code { get }
  @available(iOS 9.3, *)
  static var cloudServicePermissionDenied: SKError.Code { get }
  @available(iOS 9.3, *)
  static var cloudServiceNetworkConnectionFailed: SKError.Code { get }
  @available(iOS 10.3, *)
  static var cloudServiceRevoked: SKError.Code { get }
  @available(iOS 12.2, *)
  static var privacyAcknowledgementRequired: SKError.Code { get }
  @available(iOS 12.2, *)
  static var unauthorizedRequestData: SKError.Code { get }
  @available(iOS 12.2, *)
  static var invalidOfferIdentifier: SKError.Code { get }
  @available(iOS 12.2, *)
  static var invalidSignature: SKError.Code { get }
  @available(iOS 12.2, *)
  static var missingOfferParams: SKError.Code { get }
  @available(iOS 12.2, *)
  static var invalidOfferPrice: SKError.Code { get }
  @available(iOS 12.2, *)
  static var overlayCancelled: SKError.Code { get }
  @available(iOS 14.0, *)
  static var overlayInvalidConfiguration: SKError.Code { get }
  @available(iOS 14.0, *)
  static var overlayTimeout: SKError.Code { get }
  @available(iOS 14.0, *)
  static var ineligibleForOffer: SKError.Code { get }
}
