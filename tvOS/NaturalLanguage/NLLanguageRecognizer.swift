
@available(tvOS 12.0, *)
class NLLanguageRecognizer : NSObject {
  @available(tvOS 12.0, *)
  class func dominantLanguage(for string: String) -> NLLanguage?
  @available(tvOS 12.0, *)
  func processString(_ string: String)
  @available(tvOS 12.0, *)
  func reset()
  @available(tvOS 12.0, *)
  var dominantLanguage: NLLanguage? { get }
  @available(tvOS 12.0, *)
  func __languageHypotheses(withMaximum maxHypotheses: Int) -> [NLLanguage : NSNumber]
  @available(tvOS 12.0, *)
  var __languageHints: [NLLanguage : NSNumber]
  @available(tvOS 12.0, *)
  var languageConstraints: [NLLanguage]
}

@available(macOS 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
extension NLLanguageRecognizer {
  @nonobjc var languageHints: [NLLanguage : Double]
  @nonobjc func languageHypotheses(withMaximum maxHypotheses: Int) -> [NLLanguage : Double]
}
