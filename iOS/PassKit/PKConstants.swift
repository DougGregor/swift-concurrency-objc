
struct PKEncryptionScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKEncryptionScheme {
  @available(iOS 9.0, *)
  static let ECC_V2: PKEncryptionScheme
  @available(iOS 10.0, *)
  static let RSA_V2: PKEncryptionScheme
}
struct PKPaymentNetwork : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPaymentNetwork {
  @available(iOS 8.0, *)
  static let amex: PKPaymentNetwork
  @available(iOS, introduced: 10.3, deprecated: 11.0, message: "Use PKPaymentNetworkCartesBancaires instead.")
  static let carteBancaire: PKPaymentNetwork
  @available(iOS, introduced: 11.0, deprecated: 11.2, message: "Use PKPaymentNetworkCartesBancaires instead.")
  static let carteBancaires: PKPaymentNetwork
  @available(iOS 11.2, *)
  static let cartesBancaires: PKPaymentNetwork
  @available(iOS 9.2, *)
  static let chinaUnionPay: PKPaymentNetwork
  @available(iOS 9.0, *)
  static let discover: PKPaymentNetwork
  @available(iOS 12.0, *)
  static let eftpos: PKPaymentNetwork
  @available(iOS 12.0, *)
  static let electron: PKPaymentNetwork
  @available(iOS 12.1.1, *)
  static let elo: PKPaymentNetwork
  @available(iOS 10.3, *)
  static let idCredit: PKPaymentNetwork
  @available(iOS 9.2, *)
  static let interac: PKPaymentNetwork
  @available(iOS 10.1, *)
  static let JCB: PKPaymentNetwork
  @available(iOS 12.1.1, *)
  static let mada: PKPaymentNetwork
  @available(iOS 12.0, *)
  static let maestro: PKPaymentNetwork
  @available(iOS 8.0, *)
  static let masterCard: PKPaymentNetwork
  @available(iOS 9.0, *)
  static let privateLabel: PKPaymentNetwork
  @available(iOS 10.3, *)
  static let quicPay: PKPaymentNetwork
  @available(iOS 10.1, *)
  static let suica: PKPaymentNetwork
  @available(iOS 8.0, *)
  static let visa: PKPaymentNetwork
  @available(iOS 12.0, *)
  static let vPay: PKPaymentNetwork
  @available(iOS 14.0, *)
  static let barcode: PKPaymentNetwork
  @available(iOS 14.0, *)
  static let girocard: PKPaymentNetwork
}
struct PKContactField : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKContactField {
  @available(iOS 11.0, *)
  static let postalAddress: PKContactField
  @available(iOS 11.0, *)
  static let emailAddress: PKContactField
  @available(iOS 11.0, *)
  static let phoneNumber: PKContactField
  @available(iOS 11.0, *)
  static let name: PKContactField
  @available(iOS 11.0, *)
  static let phoneticName: PKContactField
}
@available(iOS 8.0, *)
enum PKPaymentAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use PKPaymentAuthorizationResult with PKPaymentAuthorizationStatusFailure and include the result of -paymentBillingAddressInvalidErrorWithKey:localizedDescription: in the errors array.")
  case invalidBillingPostalAddress
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use PKPaymentAuthorizationResult with PKPaymentAuthorizationStatusFailure and include the result of -paymentShippingAddressInvalidErrorWithKey:localizedDescription: in the errors array.")
  case invalidShippingPostalAddress
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use PKPaymentAuthorizationResult with PKPaymentAuthorizationStatusFailure and include the result of -paymentContactInvalidErrorWithContactField:localizedDescription: in the errors array.")
  case invalidShippingContact
  @available(iOS 9.2, *)
  case pinRequired
  @available(iOS 9.2, *)
  case pinIncorrect
  @available(iOS 9.2, *)
  case pinLockout
}
@available(iOS 8.3, *)
enum PKPaymentButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case white
  case whiteOutline
  case black
  @available(iOS 14.0, *)
  case automatic
}
@available(iOS 8.3, *)
enum PKPaymentButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case buy
  @available(iOS 9.0, *)
  case setUp
  @available(iOS 10.0, *)
  case inStore
  @available(iOS 10.2, *)
  case donate
  @available(iOS 12.0, *)
  case checkout
  @available(iOS 12.0, *)
  case book
  @available(iOS 12.0, *)
  case subscribe
  @available(iOS 14.0, *)
  case reload
  @available(iOS 14.0, *)
  case addMoney
  @available(iOS 14.0, *)
  case topUp
  @available(iOS 14.0, *)
  case order
  @available(iOS 14.0, *)
  case rent
  @available(iOS 14.0, *)
  case support
  @available(iOS 14.0, *)
  case contribute
  @available(iOS 14.0, *)
  case tip
}
