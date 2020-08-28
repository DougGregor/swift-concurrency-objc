
extension PersonNameComponentsFormatter {
  @available(macOS 10.11, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case short
    case medium
    case long
    case abbreviated
  }
  @available(macOS 10.11, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var phonetic: PersonNameComponentsFormatter.Options { get }
  }
}
@available(macOS 10.11, *)
class PersonNameComponentsFormatter : Formatter {
  var style: PersonNameComponentsFormatter.Style
  var isPhonetic: Bool
  class func localizedString(from components: PersonNameComponents, style nameFormatStyle: PersonNameComponentsFormatter.Style, options nameOptions: PersonNameComponentsFormatter.Options = []) -> String
  func string(from components: PersonNameComponents) -> String
  func annotatedString(from components: PersonNameComponents) -> NSAttributedString
  @available(macOS 10.12, *)
  func personNameComponents(from string: String) -> PersonNameComponents?
}
@available(macOS 10.11, *)
let NSPersonNameComponentKey: String
@available(macOS 10.11, *)
let NSPersonNameComponentGivenName: String
@available(macOS 10.11, *)
let NSPersonNameComponentFamilyName: String
@available(macOS 10.11, *)
let NSPersonNameComponentMiddleName: String
@available(macOS 10.11, *)
let NSPersonNameComponentPrefix: String
@available(macOS 10.11, *)
let NSPersonNameComponentSuffix: String
@available(macOS 10.11, *)
let NSPersonNameComponentNickname: String
@available(macOS 10.11, *)
let NSPersonNameComponentDelimiter: String
