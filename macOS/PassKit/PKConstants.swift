
struct PKEncryptionScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKEncryptionScheme {
  static let ECC_V2: PKEncryptionScheme
  static let RSA_V2: PKEncryptionScheme
}
struct PKPaymentNetwork : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPaymentNetwork {
  @available(macOS 11.0, *)
  static let amex: PKPaymentNetwork
  @available(macOS, introduced: 10.13, deprecated: 11.0, message: "Use PKPaymentNetworkCartesBancaires instead.")
  static let carteBancaire: PKPaymentNetwork
  @available(macOS, introduced: 10.13, deprecated: 11.0, message: "Use PKPaymentNetworkCartesBancaires instead.")
  static let carteBancaires: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let cartesBancaires: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let chinaUnionPay: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let discover: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let eftpos: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let electron: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let elo: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let idCredit: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let interac: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let JCB: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let mada: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let maestro: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let masterCard: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let privateLabel: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let quicPay: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let suica: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let visa: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let vPay: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let barcode: PKPaymentNetwork
  @available(macOS 11.0, *)
  static let girocard: PKPaymentNetwork
}
struct PKContactField : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKContactField {
  @available(macOS 11.0, *)
  static let postalAddress: PKContactField
  @available(macOS 11.0, *)
  static let emailAddress: PKContactField
  @available(macOS 11.0, *)
  static let phoneNumber: PKContactField
  @available(macOS 11.0, *)
  static let name: PKContactField
  @available(macOS 11.0, *)
  static let phoneticName: PKContactField
}
@available(macOS 11.0, *)
enum PKPaymentAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
  case invalidBillingPostalAddress
  case invalidShippingPostalAddress
  case invalidShippingContact
  @available(macOS 11.0, *)
  case pinRequired
  @available(macOS 11.0, *)
  case pinIncorrect
  @available(macOS 11.0, *)
  case pinLockout
}
@available(macOS 11.0, *)
enum PKPaymentButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case white
  case whiteOutline
  case black
  @available(macOS 11.0, *)
  case automatic
}
@available(macOS 11.0, *)
enum PKPaymentButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case buy
  @available(macOS 11.0, *)
  case setUp
  @available(macOS 11.0, *)
  case inStore
  @available(macOS 11.0, *)
  case donate
  @available(macOS 11.0, *)
  case checkout
  @available(macOS 11.0, *)
  case book
  @available(macOS 11.0, *)
  case subscribe
  @available(macOS 11.0, *)
  case reload
  @available(macOS 11.0, *)
  case addMoney
  @available(macOS 11.0, *)
  case topUp
  @available(macOS 11.0, *)
  case order
  @available(macOS 11.0, *)
  case rent
  @available(macOS 11.0, *)
  case support
  @available(macOS 11.0, *)
  case contribute
  @available(macOS 11.0, *)
  case tip
}
