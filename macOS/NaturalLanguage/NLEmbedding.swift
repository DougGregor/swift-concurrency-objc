
enum NLDistanceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cosine
}
typealias NLDistance = Double
@available(macOS 10.15, *)
class NLEmbedding : NSObject {
  @available(macOS 10.15, *)
  class func wordEmbedding(for language: NLLanguage) -> NLEmbedding?
  @available(macOS 10.15, *)
  class func wordEmbedding(for language: NLLanguage, revision: Int) -> NLEmbedding?
  @available(macOS 11.0, *)
  class func sentenceEmbedding(for language: NLLanguage) -> NLEmbedding?
  @available(macOS 11.0, *)
  class func sentenceEmbedding(for language: NLLanguage, revision: Int) -> NLEmbedding?
  @available(macOS 10.15, *)
  convenience init(contentsOf url: URL) throws
  @available(macOS 10.15, *)
  func contains(_ string: String) -> Bool
  @available(macOS 10.15, *)
  func __distanceBetweenString(_ firstString: String, andString secondString: String, distanceType: NLDistanceType) -> NLDistance
  @available(macOS 10.15, *)
  func __enumerateNeighbors(for string: String, maximumCount maxCount: Int, distanceType: NLDistanceType, using block: (String, NLDistance, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.15, *)
  func __enumerateNeighbors(for string: String, maximumCount maxCount: Int, maximumDistance maxDistance: NLDistance, distanceType: NLDistanceType, using block: (String, NLDistance, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.15, *)
  func __neighbors(for string: String, maximumCount maxCount: Int, distanceType: NLDistanceType) -> [String]?
  @available(macOS 10.15, *)
  func __neighbors(for string: String, maximumCount maxCount: Int, maximumDistance maxDistance: NLDistance, distanceType: NLDistanceType) -> [String]?
  @available(macOS 10.15, *)
  func __vector(for string: String) -> [NSNumber]?
  @available(macOS 10.15, *)
  func __enumerateNeighbors(forVector vector: [NSNumber], maximumCount maxCount: Int, distanceType: NLDistanceType, using block: (String, NLDistance, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.15, *)
  func __enumerateNeighbors(forVector vector: [NSNumber], maximumCount maxCount: Int, maximumDistance maxDistance: NLDistance, distanceType: NLDistanceType, using block: (String, NLDistance, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.15, *)
  func __neighbors(forVector vector: [NSNumber], maximumCount maxCount: Int, distanceType: NLDistanceType) -> [String]
  @available(macOS 10.15, *)
  func __neighbors(forVector vector: [NSNumber], maximumCount maxCount: Int, maximumDistance maxDistance: NLDistance, distanceType: NLDistanceType) -> [String]
  @available(macOS 10.15, *)
  var dimension: Int { get }
  @available(macOS 10.15, *)
  var vocabularySize: Int { get }
  @available(macOS 10.15, *)
  var language: NLLanguage? { get }
  @available(macOS 10.15, *)
  var revision: Int { get }
  @available(macOS 10.15, *)
  class func supportedRevisions(for language: NLLanguage) -> IndexSet
  @available(macOS 10.15, *)
  class func currentRevision(for language: NLLanguage) -> Int
  @available(macOS 11.0, *)
  class func supportedSentenceEmbeddingRevisions(for language: NLLanguage) -> IndexSet
  @available(macOS 11.0, *)
  class func currentSentenceEmbeddingRevision(for language: NLLanguage) -> Int
  @available(macOS 10.15, *)
  class func __write(for dictionary: [String : [NSNumber]], language: NLLanguage?, revision: Int, to url: URL) throws
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
