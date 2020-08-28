
@available(macOS 11.0, *)
enum PKPassType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case barcode
  @available(macOS 11.0, *)
  case secureElement
  @available(macOS, introduced: 10.12, deprecated: 100000, message: "Use PKPassTypeSecureElement instead")
  static var payment: PKPassType { get }
  case any
}
class PKPass : PKObject {
  init(data: Data) throws
  @available(macOS 11.0, *)
  var passType: PKPassType { get }
  @available(macOS, introduced: 11.0, deprecated: 100000, message: "Use -[PKPass secureElementPass] instead")
  var paymentPass: PKPaymentPass? { get }
  @available(macOS 11.0, *)
  var secureElementPass: PKSecureElementPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  var webServiceURL: URL? { get }
  var authenticationToken: String? { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  var relevantDate: Date? { get }
  @available(macOS 11.0, *)
  var userInfo: [AnyHashable : Any]? { get }
  var passURL: URL? { get }
  @available(macOS 11.0, *)
  var isRemotePass: Bool { get }
  @available(macOS 11.0, *)
  var deviceName: String { get }
  func localizedValue(forFieldKey key: String) -> Any?
}
