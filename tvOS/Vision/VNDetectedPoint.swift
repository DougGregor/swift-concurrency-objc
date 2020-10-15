
struct VNRecognizedPointKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct VNRecognizedPointGroupKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(tvOS 14.0, *)
class VNDetectedPoint : VNPoint {
  var confidence: VNConfidence { get }
}
@available(tvOS 14.0, *)
class VNRecognizedPoint : VNDetectedPoint {
  var identifier: VNRecognizedPointKey { get }
}
