
@available(iOS 12.0, *)
enum PKAddPaymentPassStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case payment
  case access
}
@available(iOS 9.0, *)
class PKAddPaymentPassRequestConfiguration : NSObject {
  init?(encryptionScheme: PKEncryptionScheme)
  var encryptionScheme: PKEncryptionScheme { get }
  @available(iOS 12.0, *)
  var style: PKAddPaymentPassStyle
  var cardholderName: String?
  var primaryAccountSuffix: String?
  @available(iOS 10.1, *)
  var cardDetails: [PKLabeledValue]
  var localizedDescription: String?
  var primaryAccountIdentifier: String?
  var paymentNetwork: PKPaymentNetwork?
  @available(iOS 12.3, *)
  var productIdentifiers: Set<String>
  @available(iOS 10.1, *)
  var requiresFelicaSecureElement: Bool
}
@available(iOS 9.0, *)
class PKAddPaymentPassRequest : NSObject {
  var encryptedPassData: Data?
  var activationData: Data?
  var ephemeralPublicKey: Data?
  var wrappedKey: Data?
}
