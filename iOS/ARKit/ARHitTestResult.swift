
extension ARHitTestResult {
  @available(iOS, introduced: 11.0, deprecated: 14.0, message: "Use raycasting")
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var featurePoint: ARHitTestResult.ResultType { get }
    static var estimatedHorizontalPlane: ARHitTestResult.ResultType { get }
    @available(iOS 11.3, *)
    static var estimatedVerticalPlane: ARHitTestResult.ResultType { get }
    static var existingPlane: ARHitTestResult.ResultType { get }
    static var existingPlaneUsingExtent: ARHitTestResult.ResultType { get }
    @available(iOS 11.3, *)
    static var existingPlaneUsingGeometry: ARHitTestResult.ResultType { get }
  }
}
@available(iOS, introduced: 11.0, deprecated: 14.0, message: "Use raycasting")
class ARHitTestResult : NSObject {
  var type: ARHitTestResult.ResultType { get }
  var distance: CGFloat { get }
  var localTransform: simd_float4x4 { get }
  var worldTransform: simd_float4x4 { get }
  var anchor: ARAnchor? { get }
}
