
@available(macOS 10.9, *)
class SCNSkinner : NSObject, NSSecureCoding {
  weak var skeleton: @sil_weak SCNNode?
  @available(macOS 10.10, *)
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [NSValue]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)
  @available(macOS 10.9, *)
  var baseGeometry: SCNGeometry?
  @available(macOS 10.10, *)
  var baseGeometryBindTransform: SCNMatrix4
  @available(macOS 10.10, *)
  var boneInverseBindTransforms: [NSValue]? { get }
  @available(macOS 10.10, *)
  var bones: [SCNNode] { get }
  @available(macOS 10.10, *)
  var boneWeights: SCNGeometrySource { get }
  @available(macOS 10.10, *)
  var boneIndices: SCNGeometrySource { get }
}
