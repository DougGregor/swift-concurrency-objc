
enum NLDistanceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cosine
}
typealias NLDistance = Double
@available(watchOS 6.0, *)
class NLEmbedding : NSObject {
  @available(watchOS 6.0, *)
  class func wordEmbedding(for language: NLLanguage) -> NLEmbedding?
  @available(watchOS 6.0, *)
  class func wordEmbedding(for language: NLLanguage, revision: Int) -> NLEmbedding?
  @available(watchOS 7.0, *)
  class func sentenceEmbedding(for language: NLLanguage) -> NLEmbedding?
  @available(watchOS 7.0, *)
  class func sentenceEmbedding(for language: NLLanguage, revision: Int) -> NLEmbedding?
  @available(watchOS 6.0, *)
  convenience init(contentsOf url: URL) throws
  @available(watchOS 6.0, *)
  func contains(_ string: String) -> Bool
  @available(watchOS 6.0, *)
  func __distanceBetweenString(_ firstString: String, andString secondString: String, distanceType: NLDistanceType) -> NLDistance
  @available(watchOS 6.0, *)
  func __enumerateNeighbors(for string: String, maximumCount maxCount: Int, distanceType: NLDistanceType, using block: (String, NLDistance, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 6.0, *)
  func __enumerateNeighbors(for string: String, maximumCount maxCount: Int, maximumDistance maxDistance: NLDistance, distanceType: NLDistanceType, using block: (String, NLDistance, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 6.0, *)
  func __neighbors(for string: String, maximumCount maxCount: Int, distanceType: NLDistanceType) -> [String]?
  @available(watchOS 6.0, *)
  func __neighbors(for string: String, maximumCount maxCount: Int, maximumDistance maxDistance: NLDistance, distanceType: NLDistanceType) -> [String]?
  @available(watchOS 6.0, *)
  func __vector(for string: String) -> [NSNumber]?
  @available(watchOS 6.0, *)
  func __enumerateNeighbors(forVector vector: [NSNumber], maximumCount maxCount: Int, distanceType: NLDistanceType, using block: (String, NLDistance, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 6.0, *)
  func __enumerateNeighbors(forVector vector: [NSNumber], maximumCount maxCount: Int, maximumDistance maxDistance: NLDistance, distanceType: NLDistanceType, using block: (String, NLDistance, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 6.0, *)
  func __neighbors(forVector vector: [NSNumber], maximumCount maxCount: Int, distanceType: NLDistanceType) -> [String]
  @available(watchOS 6.0, *)
  func __neighbors(forVector vector: [NSNumber], maximumCount maxCount: Int, maximumDistance maxDistance: NLDistance, distanceType: NLDistanceType) -> [String]
  @available(watchOS 6.0, *)
  var dimension: Int { get }
  @available(watchOS 6.0, *)
  var vocabularySize: Int { get }
  @available(watchOS 6.0, *)
  var language: NLLanguage? { get }
  @available(watchOS 6.0, *)
  var revision: Int { get }
  @available(watchOS 6.0, *)
  class func supportedRevisions(for language: NLLanguage) -> IndexSet
  @available(watchOS 6.0, *)
  class func currentRevision(for language: NLLanguage) -> Int
  @available(watchOS 7.0, *)
  class func supportedSentenceEmbeddingRevisions(for language: NLLanguage) -> IndexSet
  @available(watchOS 7.0, *)
  class func currentSentenceEmbeddingRevision(for language: NLLanguage) -> Int
  @available(watchOS 6.0, *)
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
