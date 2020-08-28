
enum UITextAutocapitalizationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case words
  case sentences
  case allCharacters
}
enum UITextAutocorrectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case no
  case yes
}
@available(tvOS 5.0, *)
enum UITextSpellCheckingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case no
  case yes
}
@available(tvOS 11.0, *)
enum UITextSmartQuotesType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case no
  case yes
}
@available(tvOS 11.0, *)
enum UITextSmartDashesType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case no
  case yes
}
@available(tvOS 11.0, *)
enum UITextSmartInsertDeleteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case no
  case yes
}
enum UIKeyboardType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case asciiCapable
  case numbersAndPunctuation
  case URL
  case numberPad
  case phonePad
  case namePhonePad
  case emailAddress
  @available(tvOS 4.1, *)
  case decimalPad
  @available(tvOS 5.0, *)
  case twitter
  @available(tvOS 7.0, *)
  case webSearch
  @available(tvOS 10.0, *)
  case asciiCapableNumberPad
  static var alphabet: UIKeyboardType { get }
}
enum UIKeyboardAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  @available(tvOS 7.0, *)
  case dark
  @available(tvOS 7.0, *)
  case light
  static var alert: UIKeyboardAppearance { get }
}
enum UIReturnKeyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case go
  case google
  case join
  case next
  case route
  case search
  case send
  case yahoo
  case done
  case emergencyCall
  @available(tvOS 9.0, *)
  case `continue`
}
struct UITextContentType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(tvOS 12.0, *)
class UITextInputPasswordRules : NSObject, NSSecureCoding, NSCopying {
  var passwordRulesDescriptor: String { get }
  convenience init(descriptor passwordRulesDescriptor: String)
}
protocol UITextInputTraits : NSObjectProtocol {
  optional var autocapitalizationType: UITextAutocapitalizationType { get set }
  optional var autocorrectionType: UITextAutocorrectionType { get set }
  @available(tvOS 5.0, *)
  optional var spellCheckingType: UITextSpellCheckingType { get set }
  @available(tvOS 11.0, *)
  optional var smartQuotesType: UITextSmartQuotesType { get set }
  @available(tvOS 11.0, *)
  optional var smartDashesType: UITextSmartDashesType { get set }
  @available(tvOS 11.0, *)
  optional var smartInsertDeleteType: UITextSmartInsertDeleteType { get set }
  optional var keyboardType: UIKeyboardType { get set }
  optional var keyboardAppearance: UIKeyboardAppearance { get set }
  optional var returnKeyType: UIReturnKeyType { get set }
  optional var enablesReturnKeyAutomatically: Bool { get set }
  optional var isSecureTextEntry: Bool { get set }
  @available(tvOS 10.0, *)
  optional var textContentType: UITextContentType! { get set }
  @available(tvOS 12.0, *)
  @NSCopying optional var passwordRules: UITextInputPasswordRules? { get set }
}
extension UITextContentType {
  @available(tvOS 10.0, *)
  static let name: UITextContentType
  @available(tvOS 10.0, *)
  static let namePrefix: UITextContentType
  @available(tvOS 10.0, *)
  static let givenName: UITextContentType
  @available(tvOS 10.0, *)
  static let middleName: UITextContentType
  @available(tvOS 10.0, *)
  static let familyName: UITextContentType
  @available(tvOS 10.0, *)
  static let nameSuffix: UITextContentType
  @available(tvOS 10.0, *)
  static let nickname: UITextContentType
  @available(tvOS 10.0, *)
  static let jobTitle: UITextContentType
  @available(tvOS 10.0, *)
  static let organizationName: UITextContentType
  @available(tvOS 10.0, *)
  static let location: UITextContentType
  @available(tvOS 10.0, *)
  static let fullStreetAddress: UITextContentType
  @available(tvOS 10.0, *)
  static let streetAddressLine1: UITextContentType
  @available(tvOS 10.0, *)
  static let streetAddressLine2: UITextContentType
  @available(tvOS 10.0, *)
  static let addressCity: UITextContentType
  @available(tvOS 10.0, *)
  static let addressState: UITextContentType
  @available(tvOS 10.0, *)
  static let addressCityAndState: UITextContentType
  @available(tvOS 10.0, *)
  static let sublocality: UITextContentType
  @available(tvOS 10.0, *)
  static let countryName: UITextContentType
  @available(tvOS 10.0, *)
  static let postalCode: UITextContentType
  @available(tvOS 10.0, *)
  static let telephoneNumber: UITextContentType
  @available(tvOS 10.0, *)
  static let emailAddress: UITextContentType
  @available(tvOS 10.0, *)
  static let URL: UITextContentType
  @available(tvOS 10.0, *)
  static let creditCardNumber: UITextContentType
  @available(tvOS 11.0, *)
  static let username: UITextContentType
  @available(tvOS 11.0, *)
  static let password: UITextContentType
  @available(tvOS 12.0, *)
  static let newPassword: UITextContentType
  @available(tvOS 12.0, *)
  static let oneTimeCode: UITextContentType
}
