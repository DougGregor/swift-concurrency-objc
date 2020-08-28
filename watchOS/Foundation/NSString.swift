
typealias unichar = UInt16
extension NSString {
  struct CompareOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var caseInsensitive: NSString.CompareOptions { get }
    static var literal: NSString.CompareOptions { get }
    static var backwards: NSString.CompareOptions { get }
    static var anchored: NSString.CompareOptions { get }
    static var numeric: NSString.CompareOptions { get }
    @available(watchOS 2.0, *)
    static var diacriticInsensitive: NSString.CompareOptions { get }
    @available(watchOS 2.0, *)
    static var widthInsensitive: NSString.CompareOptions { get }
    @available(watchOS 2.0, *)
    static var forcedOrdering: NSString.CompareOptions { get }
    @available(watchOS 2.0, *)
    static var regularExpression: NSString.CompareOptions { get }
  }
  struct EncodingConversionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var allowLossy: NSString.EncodingConversionOptions { get }
    static var externalRepresentation: NSString.EncodingConversionOptions { get }
  }
  struct EnumerationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var byLines: NSString.EnumerationOptions { get }
    static var byParagraphs: NSString.EnumerationOptions { get }
    static var byComposedCharacterSequences: NSString.EnumerationOptions { get }
    static var byWords: NSString.EnumerationOptions { get }
    static var bySentences: NSString.EnumerationOptions { get }
    @available(watchOS 7.0, *)
    static var byCaretPositions: NSString.EnumerationOptions { get }
    @available(watchOS 7.0, *)
    static var byDeletionClusters: NSString.EnumerationOptions { get }
    static var reverse: NSString.EnumerationOptions { get }
    static var substringNotRequired: NSString.EnumerationOptions { get }
    static var localized: NSString.EnumerationOptions { get }
  }
}
var NSASCIIStringEncoding: UInt { get }
var NSNEXTSTEPStringEncoding: UInt { get }
var NSJapaneseEUCStringEncoding: UInt { get }
var NSUTF8StringEncoding: UInt { get }
var NSISOLatin1StringEncoding: UInt { get }
var NSSymbolStringEncoding: UInt { get }
var NSNonLossyASCIIStringEncoding: UInt { get }
var NSShiftJISStringEncoding: UInt { get }
var NSISOLatin2StringEncoding: UInt { get }
var NSUnicodeStringEncoding: UInt { get }
var NSWindowsCP1251StringEncoding: UInt { get }
var NSWindowsCP1252StringEncoding: UInt { get }
var NSWindowsCP1253StringEncoding: UInt { get }
var NSWindowsCP1254StringEncoding: UInt { get }
var NSWindowsCP1250StringEncoding: UInt { get }
var NSISO2022JPStringEncoding: UInt { get }
var NSMacOSRomanStringEncoding: UInt { get }
var NSUTF16StringEncoding: UInt { get }
var NSUTF16BigEndianStringEncoding: UInt { get }
var NSUTF16LittleEndianStringEncoding: UInt { get }
var NSUTF32StringEncoding: UInt { get }
var NSUTF32BigEndianStringEncoding: UInt { get }
var NSUTF32LittleEndianStringEncoding: UInt { get }
class NSString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  func character(at index: Int) -> unichar
}

extension NSString : ExpressibleByStringLiteral {
}

extension NSString : _HasCustomAnyHashableRepresentation {
}

extension NSString {
  convenience init(format: __shared NSString, _ args: CVarArg...)
  convenience init(format: __shared NSString, locale: Locale?, _ args: CVarArg...)
  class func localizedStringWithFormat(_ format: NSString, _ args: CVarArg...) -> Self
  func appendingFormat(_ format: NSString, _ args: CVarArg...) -> NSString
}

extension NSString {
  @nonobjc convenience init(string aString: __shared NSString)
}

extension NSString : _CustomPlaygroundQuickLookable {
}
extension NSString {
  func substring(from: Int) -> String
  func substring(to: Int) -> String
  func substring(with range: NSRange) -> String
  func getCharacters(_ buffer: UnsafeMutablePointer<unichar>, range: NSRange)
  func compare(_ string: String) -> ComparisonResult
  func compare(_ string: String, options mask: NSString.CompareOptions = []) -> ComparisonResult
  func compare(_ string: String, options mask: NSString.CompareOptions = [], range rangeOfReceiverToCompare: NSRange) -> ComparisonResult
  func compare(_ string: String, options mask: NSString.CompareOptions = [], range rangeOfReceiverToCompare: NSRange, locale: Any?) -> ComparisonResult
  func caseInsensitiveCompare(_ string: String) -> ComparisonResult
  func localizedCompare(_ string: String) -> ComparisonResult
  func localizedCaseInsensitiveCompare(_ string: String) -> ComparisonResult
  @available(watchOS 2.0, *)
  func localizedStandardCompare(_ string: String) -> ComparisonResult
  func isEqual(to aString: String) -> Bool
  func hasPrefix(_ str: String) -> Bool
  func hasSuffix(_ str: String) -> Bool
  func commonPrefix(with str: String, options mask: NSString.CompareOptions = []) -> String
  @available(watchOS 2.0, *)
  func contains(_ str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedCaseInsensitiveContains(_ str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedStandardContains(_ str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedStandardRange(of str: String) -> NSRange
  func range(of searchString: String) -> NSRange
  func range(of searchString: String, options mask: NSString.CompareOptions = []) -> NSRange
  func range(of searchString: String, options mask: NSString.CompareOptions = [], range rangeOfReceiverToSearch: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func range(of searchString: String, options mask: NSString.CompareOptions = [], range rangeOfReceiverToSearch: NSRange, locale: Locale?) -> NSRange
  func rangeOfCharacter(from searchSet: CharacterSet) -> NSRange
  func rangeOfCharacter(from searchSet: CharacterSet, options mask: NSString.CompareOptions = []) -> NSRange
  func rangeOfCharacter(from searchSet: CharacterSet, options mask: NSString.CompareOptions = [], range rangeOfReceiverToSearch: NSRange) -> NSRange
  func rangeOfComposedCharacterSequence(at index: Int) -> NSRange
  @available(watchOS 2.0, *)
  func rangeOfComposedCharacterSequences(for range: NSRange) -> NSRange
  func appending(_ aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  @available(watchOS 2.0, *)
  var integerValue: Int { get }
  @available(watchOS 2.0, *)
  var longLongValue: Int64 { get }
  @available(watchOS 2.0, *)
  var boolValue: Bool { get }
  var uppercased: String { get }
  var lowercased: String { get }
  var capitalized: String { get }
  @available(watchOS 2.0, *)
  var localizedUppercase: String { get }
  @available(watchOS 2.0, *)
  var localizedLowercase: String { get }
  @available(watchOS 2.0, *)
  var localizedCapitalized: String { get }
  @available(watchOS 2.0, *)
  func uppercased(with locale: Locale?) -> String
  @available(watchOS 2.0, *)
  func lowercased(with locale: Locale?) -> String
  @available(watchOS 2.0, *)
  func capitalized(with locale: Locale?) -> String
  func getLineStart(_ startPtr: UnsafeMutablePointer<Int>?, end lineEndPtr: UnsafeMutablePointer<Int>?, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>?, for range: NSRange)
  func lineRange(for range: NSRange) -> NSRange
  func getParagraphStart(_ startPtr: UnsafeMutablePointer<Int>?, end parEndPtr: UnsafeMutablePointer<Int>?, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>?, for range: NSRange)
  func paragraphRange(for range: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func enumerateSubstrings(in range: NSRange, options opts: NSString.EnumerationOptions = [], using block: @escaping (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateLines(_ block: @escaping (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var utf8String: UnsafePointer<CChar>? { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func data(using encoding: UInt, allowLossyConversion lossy: Bool) -> Data?
  func data(using encoding: UInt) -> Data?
  func canBeConverted(to encoding: UInt) -> Bool
  func cString(using encoding: UInt) -> UnsafePointer<CChar>?
  func getCString(_ buffer: UnsafeMutablePointer<CChar>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(_ buffer: UnsafeMutableRawPointer?, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>?, encoding: UInt, options: NSString.EncodingConversionOptions = [], range: NSRange, remaining leftover: NSRangePointer?) -> Bool
  func maximumLengthOfBytes(using enc: UInt) -> Int
  func lengthOfBytes(using enc: UInt) -> Int
  class var availableStringEncodings: UnsafePointer<UInt> { get }
  class func localizedName(of encoding: UInt) -> String
  class var defaultCStringEncoding: UInt { get }
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func components(separatedBy separator: String) -> [String]
  @available(watchOS 2.0, *)
  func components(separatedBy separator: CharacterSet) -> [String]
  func trimmingCharacters(in set: CharacterSet) -> String
  func padding(toLength newLength: Int, withPad padString: String, startingAt padIndex: Int) -> String
  @available(watchOS 2.0, *)
  func folding(options: NSString.CompareOptions = [], locale: Locale?) -> String
  @available(watchOS 2.0, *)
  func replacingOccurrences(of target: String, with replacement: String, options: NSString.CompareOptions = [], range searchRange: NSRange) -> String
  @available(watchOS 2.0, *)
  func replacingOccurrences(of target: String, with replacement: String) -> String
  @available(watchOS 2.0, *)
  func replacingCharacters(in range: NSRange, with replacement: String) -> String
  @available(watchOS 2.0, *)
  func applyingTransform(_ transform: StringTransform, reverse: Bool) -> String?
  func write(to url: URL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func write(toFile path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(charactersNoCopy chars: UnsafeMutablePointer<unichar>, length len: Int, deallocator: ((UnsafeMutablePointer<unichar>, Int) -> Void)? = nil)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<CChar>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: Any?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafeRawPointer, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutableRawPointer, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(bytesNoCopy bytes: UnsafeMutableRawPointer, length len: Int, encoding: UInt, deallocator: ((UnsafeMutableRawPointer, Int) -> Void)? = nil)
  convenience init?(cString nullTerminatedCString: UnsafePointer<CChar>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>?) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>?) throws
}
struct StringTransform : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StringTransform {
  @available(watchOS 2.0, *)
  static let latinToKatakana: StringTransform
  @available(watchOS 2.0, *)
  static let latinToHiragana: StringTransform
  @available(watchOS 2.0, *)
  static let latinToHangul: StringTransform
  @available(watchOS 2.0, *)
  static let latinToArabic: StringTransform
  @available(watchOS 2.0, *)
  static let latinToHebrew: StringTransform
  @available(watchOS 2.0, *)
  static let latinToThai: StringTransform
  @available(watchOS 2.0, *)
  static let latinToCyrillic: StringTransform
  @available(watchOS 2.0, *)
  static let latinToGreek: StringTransform
  @available(watchOS 2.0, *)
  static let toLatin: StringTransform
  @available(watchOS 2.0, *)
  static let mandarinToLatin: StringTransform
  @available(watchOS 2.0, *)
  static let hiraganaToKatakana: StringTransform
  @available(watchOS 2.0, *)
  static let fullwidthToHalfwidth: StringTransform
  @available(watchOS 2.0, *)
  static let toXMLHex: StringTransform
  @available(watchOS 2.0, *)
  static let toUnicodeName: StringTransform
  @available(watchOS 2.0, *)
  static let stripCombiningMarks: StringTransform
  @available(watchOS 2.0, *)
  static let stripDiacritics: StringTransform
}
struct StringEncodingDetectionOptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSString {
  @available(watchOS 2.0, *)
  class func stringEncoding(for data: Data, encodingOptions opts: [StringEncodingDetectionOptionsKey : Any]? = nil, convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>?, usedLossyConversion: UnsafeMutablePointer<ObjCBool>?) -> UInt
}
extension StringEncodingDetectionOptionsKey {
  @available(watchOS 2.0, *)
  static let suggestedEncodingsKey: StringEncodingDetectionOptionsKey
  @available(watchOS 2.0, *)
  static let disallowedEncodingsKey: StringEncodingDetectionOptionsKey
  @available(watchOS 2.0, *)
  static let useOnlySuggestedEncodingsKey: StringEncodingDetectionOptionsKey
  @available(watchOS 2.0, *)
  static let allowLossyKey: StringEncodingDetectionOptionsKey
  @available(watchOS 2.0, *)
  static let fromWindowsKey: StringEncodingDetectionOptionsKey
  @available(watchOS 2.0, *)
  static let lossySubstitutionKey: StringEncodingDetectionOptionsKey
  @available(watchOS 2.0, *)
  static let likelyLanguageKey: StringEncodingDetectionOptionsKey
}
extension NSString : NSItemProviderReading, NSItemProviderWriting {
}
class NSMutableString : NSString {
  func replaceCharacters(in range: NSRange, with aString: String)
}

extension NSMutableString {
  func appendFormat(_ format: NSString, _ args: CVarArg...)
}
extension NSMutableString {
  func insert(_ aString: String, at loc: Int)
  func deleteCharacters(in range: NSRange)
  func append(_ aString: String)
  func setString(_ aString: String)
  func replaceOccurrences(of target: String, with replacement: String, options: NSString.CompareOptions = [], range searchRange: NSRange) -> Int
  @available(watchOS 2.0, *)
  func applyTransform(_ transform: StringTransform, reverse: Bool, range: NSRange, updatedRange resultingRange: NSRangePointer?) -> Bool
  init(capacity: Int)
}
extension NSExceptionName {
  static let characterConversionException: NSExceptionName
  static let parseErrorException: NSExceptionName
}
extension NSString {
  func propertyList() -> Any
  func propertyListFromStringsFileFormat() -> [AnyHashable : Any]?
}
extension NSString {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -cStringUsingEncoding: instead")
  func cString() -> UnsafePointer<CChar>?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -cStringUsingEncoding: instead")
  func lossyCString() -> UnsafePointer<CChar>?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -lengthOfBytesUsingEncoding: instead")
  func cStringLength() -> Int
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -getCString:maxLength:encoding: instead")
  func getCString(_ bytes: UnsafeMutablePointer<CChar>)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -getCString:maxLength:encoding: instead")
  func getCString(_ bytes: UnsafeMutablePointer<CChar>, maxLength: Int)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -getCString:maxLength:encoding: instead")
  func getCString(_ bytes: UnsafeMutablePointer<CChar>, maxLength: Int, range aRange: NSRange, remaining leftoverRange: NSRangePointer?)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -writeToFile:atomically:error: instead")
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -writeToURL:atomically:error: instead")
  func write(to url: URL, atomically: Bool) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -initWithContentsOfFile:encoding:error: instead")
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -initWithContentsOfURL:encoding:error: instead")
  convenience init?(contentsOf url: URL)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +stringWithContentsOfFile:encoding:error: instead")
  class func string(withContentsOfFile path: String) -> Any?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +stringWithContentsOfURL:encoding:error: instead")
  class func string(withContentsOf url: URL) -> Any?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -initWithCString:encoding: instead")
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<CChar>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -initWithCString:encoding: instead")
  convenience init?(cString bytes: UnsafePointer<CChar>, length: Int)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -initWithCString:encoding: instead")
  convenience init?(cString bytes: UnsafePointer<CChar>)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +stringWithCString:encoding:")
  class func string(withCString bytes: UnsafePointer<CChar>, length: Int) -> Any?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +stringWithCString:encoding: instead")
  class func string(withCString bytes: UnsafePointer<CChar>) -> Any?
  func getCharacters(_ buffer: UnsafeMutablePointer<unichar>)
}
var NSProprietaryStringEncoding: UInt { get }
