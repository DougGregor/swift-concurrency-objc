
extension NSRegularExpression {
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var caseInsensitive: NSRegularExpression.Options { get }
    static var allowCommentsAndWhitespace: NSRegularExpression.Options { get }
    static var ignoreMetacharacters: NSRegularExpression.Options { get }
    static var dotMatchesLineSeparators: NSRegularExpression.Options { get }
    static var anchorsMatchLines: NSRegularExpression.Options { get }
    static var useUnixLineSeparators: NSRegularExpression.Options { get }
    static var useUnicodeWordBoundaries: NSRegularExpression.Options { get }
  }
  struct MatchingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var reportProgress: NSRegularExpression.MatchingOptions { get }
    static var reportCompletion: NSRegularExpression.MatchingOptions { get }
    static var anchored: NSRegularExpression.MatchingOptions { get }
    static var withTransparentBounds: NSRegularExpression.MatchingOptions { get }
    static var withoutAnchoringBounds: NSRegularExpression.MatchingOptions { get }
  }
  struct MatchingFlags : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var progress: NSRegularExpression.MatchingFlags { get }
    static var completed: NSRegularExpression.MatchingFlags { get }
    static var hitEnd: NSRegularExpression.MatchingFlags { get }
    static var requiredEnd: NSRegularExpression.MatchingFlags { get }
    static var internalError: NSRegularExpression.MatchingFlags { get }
  }
}
@available(iOS 4.0, *)
class NSRegularExpression : NSObject, NSCopying, NSSecureCoding {
  init(pattern: String, options: NSRegularExpression.Options = []) throws
  var pattern: String { get }
  var options: NSRegularExpression.Options { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPattern(for string: String) -> String
}
extension NSRegularExpression {
  func enumerateMatches(in string: String, options: NSRegularExpression.MatchingOptions = [], range: NSRange, using block: (NSTextCheckingResult?, NSRegularExpression.MatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matches(in string: String, options: NSRegularExpression.MatchingOptions = [], range: NSRange) -> [NSTextCheckingResult]
  func numberOfMatches(in string: String, options: NSRegularExpression.MatchingOptions = [], range: NSRange) -> Int
  func firstMatch(in string: String, options: NSRegularExpression.MatchingOptions = [], range: NSRange) -> NSTextCheckingResult?
  func rangeOfFirstMatch(in string: String, options: NSRegularExpression.MatchingOptions = [], range: NSRange) -> NSRange
}
extension NSRegularExpression {
  func stringByReplacingMatches(in string: String, options: NSRegularExpression.MatchingOptions = [], range: NSRange, withTemplate templ: String) -> String
  func replaceMatches(in string: NSMutableString, options: NSRegularExpression.MatchingOptions = [], range: NSRange, withTemplate templ: String) -> Int
  func replacementString(for result: NSTextCheckingResult, in string: String, offset: Int, template templ: String) -> String
  class func escapedTemplate(for string: String) -> String
}
@available(iOS 4.0, *)
class NSDataDetector : NSRegularExpression {
  init(types checkingTypes: NSTextCheckingTypes) throws
  var checkingTypes: NSTextCheckingTypes { get }
}
