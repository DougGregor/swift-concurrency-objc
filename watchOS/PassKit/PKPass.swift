
@available(watchOS 3.0, *)
enum PKPassType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case barcode
  @available(watchOS 6.2, *)
  case secureElement
  @available(watchOS, introduced: 3.0, deprecated: 100000, message: "Use PKPassTypeSecureElement instead")
  static var payment: PKPassType { get }
  case any
}
class PKPass : PKObject {
  init(data: Data) throws
  @available(watchOS 3.0, *)
  var passType: PKPassType { get }
  @available(watchOS, introduced: 3.0, deprecated: 100000, message: "Use -[PKPass secureElementPass] instead")
  var paymentPass: PKPaymentPass? { get }
  @available(watchOS 6.2, *)
  var secureElementPass: PKSecureElementPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  var webServiceURL: URL? { get }
  var authenticationToken: String? { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  var relevantDate: Date? { get }
  @available(watchOS 3.0, *)
  var userInfo: [AnyHashable : Any]? { get }
  var passURL: URL? { get }
  @available(watchOS 3.0, *)
  var isRemotePass: Bool { get }
  @available(watchOS 3.0, *)
  var deviceName: String { get }
  func localizedValue(forFieldKey key: String) -> Any?
}
