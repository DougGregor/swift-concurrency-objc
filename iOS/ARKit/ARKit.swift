
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

@available(iOS 12.0, *)
extension ARSCNView {
  @nonobjc func unprojectPoint(_ point: CGPoint, ontoPlane planeTransform: simd_float4x4) -> simd_float3?
}

@available(iOS 11.0, *)
extension ARPointCloud {
  @nonobjc var points: [vector_float3] { get }
  @nonobjc var identifiers: [UInt64] { get }
}

@available(iOS 11.0, *)
extension ARFaceGeometry {
  @nonobjc var vertices: [vector_float3] { get }
  @nonobjc var textureCoordinates: [vector_float2] { get }
  @nonobjc var triangleIndices: [Int16] { get }
}

@available(iOS 11.3, *)
extension ARPlaneGeometry {
  @nonobjc var vertices: [vector_float3] { get }
  @nonobjc var textureCoordinates: [vector_float2] { get }
  @nonobjc var triangleIndices: [Int16] { get }
  @nonobjc var boundaryVertices: [vector_float3] { get }
}

@available(iOS 12.0, *)
extension ARPlaneAnchor {
  enum Classification {
    enum Status {
      case notAvailable
      case undetermined
      case unknown
    }
    case none(ARPlaneAnchor.Classification.Status)
    case wall
    case floor
    case ceiling
    case table
    case seat
    case window
    case door
  }
  var classification: ARPlaneAnchor.Classification { get }
}

@available(iOS 13.0, *)
extension ARSkeletonDefinition {
  @nonobjc var parentIndices: [Int] { get }
  @nonobjc func index(for jointName: ARSkeleton.JointName) -> Int
}

@available(iOS 13.0, *)
extension ARSkeleton3D {
  @nonobjc var jointModelTransforms: [simd_float4x4] { get }
  @nonobjc var jointLocalTransforms: [simd_float4x4] { get }
  @nonobjc func modelTransform(for jointName: ARSkeleton.JointName) -> simd_float4x4?
  @nonobjc func localTransform(for jointName: ARSkeleton.JointName) -> simd_float4x4?
}

@available(iOS 13.0, *)
extension ARSkeleton2D {
  @nonobjc var jointLandmarks: [simd_float2] { get }
  @nonobjc func landmark(for jointName: ARSkeleton.JointName) -> simd_float2?
}

@available(iOS 14.0, *)
extension ARConfidenceLevel : Comparable {
}

@available(iOS 13.4, *)
extension ARGeometrySource {
  @available(iOS 14.0, *)
  @nonobjc subscript(index: Int32) -> (Float, Float, Float) { get }
  @available(iOS 14.0, *)
  @nonobjc subscript(index: Int32) -> CUnsignedChar { get }
}

@available(iOS 13.4, *)
extension ARGeometryElement {
  @available(iOS 14.0, *)
  @nonobjc subscript(index: Int) -> [Int32] { get }
}

@available(iOS 14.0, *)
extension ARGeoAnchor {
  @nonobjc convenience init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance? = nil)
  @nonobjc convenience init(name: String, coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance? = nil)
  @nonobjc var altitude: CLLocationDistance? { get }
}

