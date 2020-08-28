
@available(iOS 11.0, *)
enum __ARTrackingState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notAvailable
  case limited
  case normal
}
@available(iOS 11.0, *)
enum __ARTrackingStateReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case initializing
  case excessiveMotion
  case insufficientFeatures
  @available(iOS 11.3, *)
  case relocalizing
}
@available(iOS 11.0, *)
class ARCamera : NSObject, NSCopying {
  var transform: simd_float4x4 { get }
  var eulerAngles: simd_float3 { get }
  var __trackingState: __ARTrackingState { get }
  var __trackingStateReason: __ARTrackingStateReason { get }
  var intrinsics: simd_float3x3 { get }
  var imageResolution: CGSize { get }
  @available(iOS 13.0, *)
  var exposureDuration: TimeInterval { get }
  @available(iOS 13.0, *)
  var exposureOffset: Float { get }
  var projectionMatrix: simd_float4x4 { get }
  func projectionMatrix(for orientation: UIInterfaceOrientation, viewportSize: CGSize, zNear: CGFloat, zFar: CGFloat) -> simd_float4x4
  func projectPoint(_ point: simd_float3, orientation: UIInterfaceOrientation, viewportSize: CGSize) -> CGPoint
  @available(iOS 12.0, *)
  func __unprojectPoint(_ point: CGPoint, ontoPlaneWithTransform planeTransform: simd_float4x4, orientation: UIInterfaceOrientation, viewportSize: CGSize) -> simd_float3
  func viewMatrix(for orientation: UIInterfaceOrientation) -> simd_float4x4
}

@available(iOS 11.0, *)
extension ARCamera {
  @frozen enum TrackingState {
    enum Reason {
      case initializing
      case excessiveMotion
      case insufficientFeatures
      @available(iOS 11.3, *)
      case relocalizing
    }
    case notAvailable
    case limited(ARCamera.TrackingState.Reason)
    case normal
  }
  var trackingState: ARCamera.TrackingState { get }
  @available(iOS 12.0, *)
  @nonobjc func unprojectPoint(_ point: CGPoint, ontoPlane planeTransform: simd_float4x4, orientation: UIInterfaceOrientation, viewportSize: CGSize) -> simd_float3?
}

@available(iOS 11.0, *)
extension ARCamera.TrackingState.Reason : Equatable {
}

@available(iOS 11.0, *)
extension ARCamera.TrackingState.Reason : Hashable {
}
