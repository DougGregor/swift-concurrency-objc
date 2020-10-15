
extension PersonNameComponentsFormatter {
  @available(iOS 9.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case short
    case medium
    case long
    case abbreviated
  }
  @available(iOS 9.0, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var phonetic: PersonNameComponentsFormatter.Options { get }
  }
}
@available(iOS 9.0, *)
class PersonNameComponentsFormatter : Formatter {
  var style: PersonNameComponentsFormatter.Style
  var isPhonetic: Bool
  class func localizedString(from components: PersonNameComponents, style nameFormatStyle: PersonNameComponentsFormatter.Style, options nameOptions: PersonNameComponentsFormatter.Options = []) -> String
  func string(from components: PersonNameComponents) -> String
  func annotatedString(from components: PersonNameComponents) -> NSAttributedString
  @available(iOS 10.0, *)
  func personNameComponents(from string: String) -> PersonNameComponents?
}
@available(iOS 9.0, *)
let NSPersonNameComponentKey: String
@available(iOS 9.0, *)
let NSPersonNameComponentGivenName: String
@available(iOS 9.0, *)
let NSPersonNameComponentFamilyName: String
@available(iOS 9.0, *)
let NSPersonNameComponentMiddleName: String
@available(iOS 9.0, *)
let NSPersonNameComponentPrefix: String
@available(iOS 9.0, *)
let NSPersonNameComponentSuffix: String
@available(iOS 9.0, *)
let NSPersonNameComponentNickname: String
@available(iOS 9.0, *)
let NSPersonNameComponentDelimiter: String
