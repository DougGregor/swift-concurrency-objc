
@available(iOS 8.0, *)
enum PKPassType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case barcode
  @available(iOS 13.4, *)
  case secureElement
  @available(iOS, introduced: 8.0, deprecated: 100000, message: "Use PKPassTypeSecureElement instead")
  static var payment: PKPassType { get }
  case any
}
class PKPass : PKObject {
  init(data: Data) throws
  @available(iOS 8.0, *)
  var passType: PKPassType { get }
  @available(iOS, introduced: 8.0, deprecated: 100000, message: "Use -[PKPass secureElementPass] instead")
  var paymentPass: PKPaymentPass? { get }
  @available(iOS 13.4, *)
  var secureElementPass: PKSecureElementPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  var webServiceURL: URL? { get }
  var authenticationToken: String? { get }
  @NSCopying var icon: UIImage { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  var relevantDate: Date? { get }
  @available(iOS 7.0, *)
  var userInfo: [AnyHashable : Any]? { get }
  var passURL: URL? { get }
  @available(iOS 9.0, *)
  var isRemotePass: Bool { get }
  @available(iOS 9.0, *)
  var deviceName: String { get }
  func localizedValue(forFieldKey key: String) -> Any?
}
