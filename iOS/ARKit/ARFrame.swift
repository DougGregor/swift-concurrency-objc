
extension ARFrame {
  @available(iOS 13.0, *)
  enum SegmentationClass : UInt8 {
    init?(rawValue: UInt8)
    var rawValue: UInt8 { get }
    case none
    case person
  }
  @available(iOS 12.0, *)
  enum WorldMappingStatus : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case notAvailable
    case limited
    case extending
    case mapped
  }
}
@available(iOS 11.0, *)
class ARFrame : NSObject, NSCopying {
  var timestamp: TimeInterval { get }
  var capturedImage: CVPixelBuffer { get }
  @available(iOS 13.0, *)
  var cameraGrainTexture: MTLTexture? { get }
  @available(iOS 13.0, *)
  var cameraGrainIntensity: Float { get }
  var capturedDepthData: AVDepthData? { get }
  var capturedDepthDataTimestamp: TimeInterval { get }
  @NSCopying var camera: ARCamera { get }
  var anchors: [ARAnchor] { get }
  var lightEstimate: ARLightEstimate? { get }
  var rawFeaturePoints: ARPointCloud? { get }
  @available(iOS 12.0, *)
  var worldMappingStatus: ARFrame.WorldMappingStatus { get }
  @available(iOS 13.0, *)
  var segmentationBuffer: CVPixelBuffer? { get }
  @available(iOS 13.0, *)
  var estimatedDepthData: CVPixelBuffer? { get }
  @available(iOS 13.0, *)
  var detectedBody: ARBody2D? { get }
  @available(iOS 14.0, *)
  var geoTrackingStatus: ARGeoTrackingStatus? { get }
  @available(iOS 14.0, *)
  var sceneDepth: ARDepthData? { get }
  @available(iOS 14.0, *)
  var smoothedSceneDepth: ARDepthData? { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0, message: "Use [ARSession raycast:]")
  func hitTest(_ point: CGPoint, types: ARHitTestResult.ResultType) -> [ARHitTestResult]
  @available(iOS 13.0, *)
  func raycastQuery(from point: CGPoint, allowing target: ARRaycastQuery.Target, alignment: ARRaycastQuery.TargetAlignment) -> ARRaycastQuery
  func displayTransform(for orientation: UIInterfaceOrientation, viewportSize: CGSize) -> CGAffineTransform
}
