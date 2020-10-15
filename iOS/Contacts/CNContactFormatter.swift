
@available(iOS 9.0, *)
enum CNContactFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fullName
  case phoneticFullName
}
@available(iOS 9.0, *)
enum CNContactDisplayNameOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case userDefault
  case givenNameFirst
  case familyNameFirst
}
@available(iOS 9.0, *)
class CNContactFormatter : Formatter, NSSecureCoding {
  class func descriptorForRequiredKeys(for style: CNContactFormatterStyle) -> CNKeyDescriptor
  class var descriptorForRequiredKeysForNameOrder: CNKeyDescriptor { get }
  class var descriptorForRequiredKeysForDelimiter: CNKeyDescriptor { get }
  class func string(from contact: CNContact, style: CNContactFormatterStyle) -> String?
  class func attributedString(from contact: CNContact, style: CNContactFormatterStyle, defaultAttributes attributes: [AnyHashable : Any]? = nil) -> NSAttributedString?
  class func nameOrder(for contact: CNContact) -> CNContactDisplayNameOrder
  class func delimiter(for contact: CNContact) -> String
  var style: CNContactFormatterStyle
  func string(from contact: CNContact) -> String?
  func attributedString(from contact: CNContact, defaultAttributes attributes: [AnyHashable : Any]? = nil) -> NSAttributedString?
}
let CNContactPropertyAttribute: String
