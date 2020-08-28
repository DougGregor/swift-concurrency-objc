
extension PersonNameComponentsFormatter {
  @available(watchOS 2.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case short
    case medium
    case long
    case abbreviated
  }
  @available(watchOS 2.0, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var phonetic: PersonNameComponentsFormatter.Options { get }
  }
}
@available(watchOS 2.0, *)
class PersonNameComponentsFormatter : Formatter {
  var style: PersonNameComponentsFormatter.Style
  var isPhonetic: Bool
  class func localizedString(from components: PersonNameComponents, style nameFormatStyle: PersonNameComponentsFormatter.Style, options nameOptions: PersonNameComponentsFormatter.Options = []) -> String
  func string(from components: PersonNameComponents) -> String
  func annotatedString(from components: PersonNameComponents) -> NSAttributedString
  @available(watchOS 3.0, *)
  func personNameComponents(from string: String) -> PersonNameComponents?
}
@available(watchOS 2.0, *)
let NSPersonNameComponentKey: String
@available(watchOS 2.0, *)
let NSPersonNameComponentGivenName: String
@available(watchOS 2.0, *)
let NSPersonNameComponentFamilyName: String
@available(watchOS 2.0, *)
let NSPersonNameComponentMiddleName: String
@available(watchOS 2.0, *)
let NSPersonNameComponentPrefix: String
@available(watchOS 2.0, *)
let NSPersonNameComponentSuffix: String
@available(watchOS 2.0, *)
let NSPersonNameComponentNickname: String
@available(watchOS 2.0, *)
let NSPersonNameComponentDelimiter: String
