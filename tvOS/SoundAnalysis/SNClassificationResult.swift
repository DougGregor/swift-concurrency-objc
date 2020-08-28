
@available(tvOS 13.0, *)
class SNClassification : NSObject {
  var identifier: String { get }
  var confidence: Double { get }
}
@available(tvOS 13.0, *)
class SNClassificationResult : NSObject, SNResult {
  var classifications: [SNClassification] { get }
  var timeRange: CMTimeRange { get }
}
