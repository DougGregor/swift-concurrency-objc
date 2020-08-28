
struct WKTextContentType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension WKTextContentType {
  static let name: WKTextContentType
  static let namePrefix: WKTextContentType
  static let givenName: WKTextContentType
  static let middleName: WKTextContentType
  static let familyName: WKTextContentType
  static let nameSuffix: WKTextContentType
  static let nickname: WKTextContentType
  static let jobTitle: WKTextContentType
  static let organizationName: WKTextContentType
  static let location: WKTextContentType
  static let fullStreetAddress: WKTextContentType
  static let streetAddressLine1: WKTextContentType
  static let streetAddressLine2: WKTextContentType
  static let addressCity: WKTextContentType
  static let addressState: WKTextContentType
  static let addressCityAndState: WKTextContentType
  static let sublocality: WKTextContentType
  static let countryName: WKTextContentType
  static let postalCode: WKTextContentType
  static let telephoneNumber: WKTextContentType
  static let emailAddress: WKTextContentType
  static let URL: WKTextContentType
  static let creditCardNumber: WKTextContentType
  static let username: WKTextContentType
  static let password: WKTextContentType
  static let newPassword: WKTextContentType
  static let oneTimeCode: WKTextContentType
}
@available(watchOS 6.0, *)
class WKInterfaceTextField : WKInterfaceObject {
  func setText(_ text: String?)
  func setAttributedText(_ attributedText: NSAttributedString?)
  func setPlaceholder(_ placeholder: String?)
  func setAttributedPlaceholder(_ attributedPlaceholder: NSAttributedString?)
  func setTextColor(_ color: UIColor?)
  func setEnabled(_ enabled: Bool)
  func setTextContentType(_ textContentType: WKTextContentType?)
  func setSecureTextEntry(_ secureTextEntry: Bool)
}
