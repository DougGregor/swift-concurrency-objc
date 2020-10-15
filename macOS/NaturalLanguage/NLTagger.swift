
@available(macOS 10.14, *)
class NLTagger : NSObject {
  @available(macOS 10.14, *)
  init(tagSchemes: [NLTagScheme])
  @available(macOS 10.14, *)
  var tagSchemes: [NLTagScheme] { get }
  @available(macOS 10.14, *)
  var string: String?
  @available(macOS 10.14, *)
  class func availableTagSchemes(for unit: NLTokenUnit, language: NLLanguage) -> [NLTagScheme]
  @available(macOS 10.14, *)
  func __tokenRange(at characterIndex: Int, unit: NLTokenUnit) -> NSRange
  @available(macOS 11.0, *)
  func __tokenRange(for range: NSRange, unit: NLTokenUnit) -> NSRange
  @available(macOS 10.14, *)
  var dominantLanguage: NLLanguage? { get }
  @available(macOS 10.14, *)
  func __enumerateTags(in range: NSRange, unit: NLTokenUnit, scheme: NLTagScheme, options: NLTagger.Options = [], using block: (NLTag?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.14, *)
  func __tag(at characterIndex: Int, unit: NLTokenUnit, scheme: NLTagScheme, tokenRange: NSRangePointer?) -> NLTag?
  @available(macOS 10.14, *)
  func __tags(in range: NSRange, unit: NLTokenUnit, scheme: NLTagScheme, options: NLTagger.Options = [], tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> [NLTag]
  @available(macOS 11.0, *)
  func __tagHypotheses(at characterIndex: Int, unit: NLTokenUnit, scheme: NLTagScheme, maximumCount: Int, tokenRange: NSRangePointer?) -> [NLTag : NSNumber]
  @available(macOS 10.14, *)
  func __setLanguage(_ language: NLLanguage, range: NSRange)
  @available(macOS 10.14, *)
  func __setOrthography(_ orthography: NSOrthography, range: NSRange)
  @available(macOS 10.14, *)
  func setModels(_ models: [NLModel], forTagScheme tagScheme: NLTagScheme)
  @available(macOS 10.14, *)
  func models(forTagScheme tagScheme: NLTagScheme) -> [NLModel]
  @available(macOS 10.15, *)
  func setGazetteers(_ gazetteers: [NLGazetteer], for tagScheme: NLTagScheme)
  @available(macOS 10.15, *)
  func gazetteers(for tagScheme: NLTagScheme) -> [NLGazetteer]
  @available(macOS 10.15, *)
  class func requestAssets(for language: NLLanguage, tagScheme: NLTagScheme, completionHandler: @escaping (NLTagger.AssetsResult, Error?) -> Void)
}

@available(macOS 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
extension NLTagger {
  @nonobjc func tokenRange(at index: String.Index, unit: NLTokenUnit) -> Range<String.Index>
  @available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
  @nonobjc func tokenRange(for range: Range<String.Index>, unit: NLTokenUnit) -> Range<String.Index>
  @nonobjc func tag(at index: String.Index, unit: NLTokenUnit, scheme: NLTagScheme) -> (NLTag?, Range<String.Index>)
  @available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
  @nonobjc func tagHypotheses(at index: String.Index, unit: NLTokenUnit, scheme: NLTagScheme, maximumCount: Int) -> ([String : Double], Range<String.Index>)
  @nonobjc func enumerateTags(in range: Range<String.Index>, unit: NLTokenUnit, scheme: NLTagScheme, options: NLTagger.Options = [], using block: (NLTag?, Range<String.Index>) -> Bool)
  @nonobjc func tags(in range: Range<String.Index>, unit: NLTokenUnit, scheme: NLTagScheme, options: NLTagger.Options = []) -> [(NLTag?, Range<String.Index>)]
  @nonobjc func setLanguage(_ language: NLLanguage, range: Range<String.Index>)
  @nonobjc func setOrthography(_ orthography: NSOrthography, range: Range<String.Index>)
}
extension NLTagger {
  enum AssetsResult : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case available
    case notAvailable
    case error
  }
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var omitWords: NLTagger.Options { get }
    static var omitPunctuation: NLTagger.Options { get }
    static var omitWhitespace: NLTagger.Options { get }
    static var omitOther: NLTagger.Options { get }
    static var joinNames: NLTagger.Options { get }
    static var joinContractions: NLTagger.Options { get }
  }
}
