
@available(macOS 10.15, *)
class SNClassification : NSObject {
  var identifier: String { get }
  var confidence: Double { get }
}
@available(macOS 10.15, *)
class SNClassificationResult : NSObject, SNResult {
  var classifications: [SNClassification] { get }
  var timeRange: CMTimeRange { get }
}
