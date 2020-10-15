
@available(iOS 14.0, *)
enum ARConfidenceLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case low
  case medium
  case high
}

@available(iOS 14.0, *)
extension ARConfidenceLevel : Comparable {
}
@available(iOS 14.0, *)
class ARDepthData : NSObject {
  unowned(unsafe) var depthMap: @sil_unmanaged CVPixelBuffer { get }
  unowned(unsafe) var confidenceMap: @sil_unmanaged CVPixelBuffer? { get }
}
