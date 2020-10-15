
enum PKAddPaymentPassStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case payment
  case access
}
class PKAddPaymentPassRequestConfiguration : NSObject {
  init?(encryptionScheme: PKEncryptionScheme)
  var encryptionScheme: PKEncryptionScheme { get }
  var style: PKAddPaymentPassStyle
  var cardholderName: String?
  var primaryAccountSuffix: String?
  var cardDetails: [PKLabeledValue]
  var localizedDescription: String?
  var primaryAccountIdentifier: String?
  var paymentNetwork: PKPaymentNetwork?
  var productIdentifiers: Set<String>
  var requiresFelicaSecureElement: Bool
}
class PKAddPaymentPassRequest : NSObject {
  var encryptedPassData: Data?
  var activationData: Data?
  var ephemeralPublicKey: Data?
  var wrappedKey: Data?
}
