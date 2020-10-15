
struct PKEncryptionScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKEncryptionScheme {
  @available(watchOS 2.0, *)
  static let ECC_V2: PKEncryptionScheme
  @available(watchOS 3.0, *)
  static let RSA_V2: PKEncryptionScheme
}
struct PKPaymentNetwork : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPaymentNetwork {
  @available(watchOS 3.0, *)
  static let amex: PKPaymentNetwork
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Use PKPaymentNetworkCartesBancaires instead.")
  static let carteBancaire: PKPaymentNetwork
  @available(watchOS, introduced: 4.0, deprecated: 4.2, message: "Use PKPaymentNetworkCartesBancaires instead.")
  static let carteBancaires: PKPaymentNetwork
  @available(watchOS 4.2, *)
  static let cartesBancaires: PKPaymentNetwork
  @available(watchOS 3.0, *)
  static let chinaUnionPay: PKPaymentNetwork
  @available(watchOS 3.0, *)
  static let discover: PKPaymentNetwork
  @available(watchOS 5.0, *)
  static let eftpos: PKPaymentNetwork
  @available(watchOS 5.0, *)
  static let electron: PKPaymentNetwork
  @available(watchOS 5.1.2, *)
  static let elo: PKPaymentNetwork
  @available(watchOS 3.2, *)
  static let idCredit: PKPaymentNetwork
  @available(watchOS 3.0, *)
  static let interac: PKPaymentNetwork
  @available(watchOS 3.1, *)
  static let JCB: PKPaymentNetwork
  @available(watchOS 5.1.2, *)
  static let mada: PKPaymentNetwork
  @available(watchOS 5.0, *)
  static let maestro: PKPaymentNetwork
  @available(watchOS 3.0, *)
  static let masterCard: PKPaymentNetwork
  @available(watchOS 3.0, *)
  static let privateLabel: PKPaymentNetwork
  @available(watchOS 3.2, *)
  static let quicPay: PKPaymentNetwork
  @available(watchOS 3.1, *)
  static let suica: PKPaymentNetwork
  @available(watchOS 3.0, *)
  static let visa: PKPaymentNetwork
  @available(watchOS 5.0, *)
  static let vPay: PKPaymentNetwork
  @available(watchOS 7.0, *)
  static let barcode: PKPaymentNetwork
  @available(watchOS 7.0, *)
  static let girocard: PKPaymentNetwork
}
struct PKContactField : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKContactField {
  @available(watchOS 4.0, *)
  static let postalAddress: PKContactField
  @available(watchOS 4.0, *)
  static let emailAddress: PKContactField
  @available(watchOS 4.0, *)
  static let phoneNumber: PKContactField
  @available(watchOS 4.0, *)
  static let name: PKContactField
  @available(watchOS 4.0, *)
  static let phoneticName: PKContactField
}
@available(watchOS 3.0, *)
enum PKPaymentAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use PKPaymentAuthorizationResult with PKPaymentAuthorizationStatusFailure and include the result of -paymentBillingAddressInvalidErrorWithKey:localizedDescription: in the errors array.")
  case invalidBillingPostalAddress
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use PKPaymentAuthorizationResult with PKPaymentAuthorizationStatusFailure and include the result of -paymentShippingAddressInvalidErrorWithKey:localizedDescription: in the errors array.")
  case invalidShippingPostalAddress
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use PKPaymentAuthorizationResult with PKPaymentAuthorizationStatusFailure and include the result of -paymentContactInvalidErrorWithContactField:localizedDescription: in the errors array.")
  case invalidShippingContact
  @available(watchOS 3.0, *)
  case pinRequired
  @available(watchOS 3.0, *)
  case pinIncorrect
  @available(watchOS 3.0, *)
  case pinLockout
}
@available(watchOS 3.0, *)
enum PKPaymentButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case white
  case whiteOutline
  case black
  @available(watchOS 7.0, *)
  case automatic
}
@available(watchOS 3.0, *)
enum PKPaymentButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case buy
  @available(watchOS 3.0, *)
  case setUp
  @available(watchOS 3.0, *)
  case inStore
  @available(watchOS 3.2, *)
  case donate
  @available(watchOS 5.0, *)
  case checkout
  @available(watchOS 5.0, *)
  case book
  @available(watchOS 5.0, *)
  case subscribe
  @available(watchOS 7.0, *)
  case reload
  @available(watchOS 7.0, *)
  case addMoney
  @available(watchOS 7.0, *)
  case topUp
  @available(watchOS 7.0, *)
  case order
  @available(watchOS 7.0, *)
  case rent
  @available(watchOS 7.0, *)
  case support
  @available(watchOS 7.0, *)
  case contribute
  @available(watchOS 7.0, *)
  case tip
}
