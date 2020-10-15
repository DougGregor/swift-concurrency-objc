
@available(macOS 10.14, *)
class NLLanguageRecognizer : NSObject {
  @available(macOS 10.14, *)
  class func dominantLanguage(for string: String) -> NLLanguage?
  @available(macOS 10.14, *)
  func processString(_ string: String)
  @available(macOS 10.14, *)
  func reset()
  @available(macOS 10.14, *)
  var dominantLanguage: NLLanguage? { get }
  @available(macOS 10.14, *)
  func __languageHypotheses(withMaximum maxHypotheses: Int) -> [NLLanguage : NSNumber]
  @available(macOS 10.14, *)
  var __languageHints: [NLLanguage : NSNumber]
  @available(macOS 10.14, *)
  var languageConstraints: [NLLanguage]
}

@available(macOS 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
extension NLLanguageRecognizer {
  @nonobjc var languageHints: [NLLanguage : Double]
  @nonobjc func languageHypotheses(withMaximum maxHypotheses: Int) -> [NLLanguage : Double]
}
