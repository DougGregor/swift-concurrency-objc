
@available(macOS 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
extension NLTokenizer {
  @nonobjc func tokenRange(at index: String.Index) -> Range<String.Index>
  @available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
  @nonobjc func tokenRange(for range: Range<String.Index>) -> Range<String.Index>
  @nonobjc func enumerateTokens(in range: Range<String.Index>, using block: (Range<String.Index>, NLTokenizer.Attributes) -> Bool)
  @nonobjc func tokens(for range: Range<String.Index>) -> [Range<String.Index>]
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

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension NLModel {
  @nonobjc func predictedLabelHypotheses(for string: String, maximumCount maxCount: Int) -> [String : Double]
  @nonobjc func predictedLabelHypotheses(forTokens tokens: [String], maximumCount maxCount: Int) -> [[String : Double]]
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension NLEmbedding {
  @nonobjc func distance(between firstString: String, and secondString: String, distanceType: NLDistanceType = .cosine) -> NLDistance
  @nonobjc func enumerateNeighbors(for string: String, maximumCount maxCount: Int, distanceType: NLDistanceType = .cosine, using block: (String, NLDistance) -> Bool)
  @nonobjc func neighbors(for string: String, maximumCount maxCount: Int, distanceType: NLDistanceType = .cosine) -> [(String, NLDistance)]
  @nonobjc func enumerateNeighbors(for vector: [Double], maximumCount maxCount: Int, distanceType: NLDistanceType = .cosine, using block: (String, NLDistance) -> Bool)
  @nonobjc func neighbors(for vector: [Double], maximumCount maxCount: Int, distanceType: NLDistanceType = .cosine) -> [(String, NLDistance)]
  @nonobjc func vector(for string: String) -> [Double]?
  @nonobjc class func write(_ dictionary: [String : [Double]], language: NLLanguage?, revision: Int, to url: URL) throws
}

@available(macOS 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
extension NLLanguageRecognizer {
  @nonobjc var languageHints: [NLLanguage : Double]
  @nonobjc func languageHypotheses(withMaximum maxHypotheses: Int) -> [NLLanguage : Double]
}

