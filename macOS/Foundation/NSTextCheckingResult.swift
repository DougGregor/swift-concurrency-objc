
extension NSTextCheckingResult {
  struct CheckingType : OptionSet {
    init(rawValue: UInt64)
    let rawValue: UInt64
    static var orthography: NSTextCheckingResult.CheckingType { get }
    static var spelling: NSTextCheckingResult.CheckingType { get }
    static var grammar: NSTextCheckingResult.CheckingType { get }
    static var date: NSTextCheckingResult.CheckingType { get }
    static var address: NSTextCheckingResult.CheckingType { get }
    static var link: NSTextCheckingResult.CheckingType { get }
    static var quote: NSTextCheckingResult.CheckingType { get }
    static var dash: NSTextCheckingResult.CheckingType { get }
    static var replacement: NSTextCheckingResult.CheckingType { get }
    static var correction: NSTextCheckingResult.CheckingType { get }
    @available(macOS 10.7, *)
    static var regularExpression: NSTextCheckingResult.CheckingType { get }
    @available(macOS 10.7, *)
    static var phoneNumber: NSTextCheckingResult.CheckingType { get }
    @available(macOS 10.7, *)
    static var transitInformation: NSTextCheckingResult.CheckingType { get }
  }
}
typealias NSTextCheckingTypes = UInt64
var NSTextCheckingAllSystemTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllCustomTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllTypes: NSTextCheckingTypes { get }
struct NSTextCheckingKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.6, *)
class NSTextCheckingResult : NSObject, NSCopying, NSSecureCoding {
  var resultType: NSTextCheckingResult.CheckingType { get }
  var range: NSRange { get }
}
extension NSTextCheckingResult {
  @NSCopying var orthography: NSOrthography? { get }
  var grammarDetails: [[String : Any]]? { get }
  var date: Date? { get }
  var timeZone: TimeZone? { get }
  var duration: TimeInterval { get }
  @available(macOS 10.7, *)
  var components: [NSTextCheckingKey : String]? { get }
  var url: URL? { get }
  var replacementString: String? { get }
  @available(macOS 10.9, *)
  var alternativeStrings: [String]? { get }
  @available(macOS 10.7, *)
  @NSCopying var regularExpression: NSRegularExpression? { get }
  @available(macOS 10.7, *)
  var phoneNumber: String? { get }
  @available(macOS 10.7, *)
  var numberOfRanges: Int { get }
  @available(macOS 10.7, *)
  func range(at idx: Int) -> NSRange
  @available(macOS 10.13, *)
  func range(withName name: String) -> NSRange
  @available(macOS 10.7, *)
  func adjustingRanges(offset: Int) -> NSTextCheckingResult
  var addressComponents: [NSTextCheckingKey : String]? { get }
}
extension NSTextCheckingKey {
  @available(macOS 10.6, *)
  static let name: NSTextCheckingKey
  @available(macOS 10.6, *)
  static let jobTitle: NSTextCheckingKey
  @available(macOS 10.6, *)
  static let organization: NSTextCheckingKey
  @available(macOS 10.6, *)
  static let street: NSTextCheckingKey
  @available(macOS 10.6, *)
  static let city: NSTextCheckingKey
  @available(macOS 10.6, *)
  static let state: NSTextCheckingKey
  @available(macOS 10.6, *)
  static let zip: NSTextCheckingKey
  @available(macOS 10.6, *)
  static let country: NSTextCheckingKey
  @available(macOS 10.6, *)
  static let phone: NSTextCheckingKey
  @available(macOS 10.7, *)
  static let airline: NSTextCheckingKey
  @available(macOS 10.7, *)
  static let flight: NSTextCheckingKey
}
extension NSTextCheckingResult {
  class func orthographyCheckingResult(range: NSRange, orthography: NSOrthography) -> NSTextCheckingResult
  class func spellCheckingResult(range: NSRange) -> NSTextCheckingResult
  class func grammarCheckingResult(range: NSRange, details: [[String : Any]]) -> NSTextCheckingResult
  class func dateCheckingResult(range: NSRange, date: Date) -> NSTextCheckingResult
  class func dateCheckingResult(range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> NSTextCheckingResult
  class func addressCheckingResult(range: NSRange, components: [NSTextCheckingKey : String]) -> NSTextCheckingResult
  class func linkCheckingResult(range: NSRange, url: URL) -> NSTextCheckingResult
  class func quoteCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func dashCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func replacementCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func correctionCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult
  @available(macOS 10.9, *)
  class func correctionCheckingResult(range: NSRange, replacementString: String, alternativeStrings: [String]) -> NSTextCheckingResult
  @available(macOS 10.7, *)
  class func regularExpressionCheckingResult(ranges: NSRangePointer, count: Int, regularExpression: NSRegularExpression) -> NSTextCheckingResult
  @available(macOS 10.7, *)
  class func phoneNumberCheckingResult(range: NSRange, phoneNumber: String) -> NSTextCheckingResult
  @available(macOS 10.7, *)
  class func transitInformationCheckingResult(range: NSRange, components: [NSTextCheckingKey : String]) -> NSTextCheckingResult
}
