
class SCNSkinner : NSObject, NSSecureCoding {
  weak var skeleton: @sil_weak SCNNode?
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [NSValue]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)
  var baseGeometry: SCNGeometry?
  var baseGeometryBindTransform: SCNMatrix4
  var boneInverseBindTransforms: [NSValue]? { get }
  var bones: [SCNNode] { get }
  var boneWeights: SCNGeometrySource { get }
  var boneIndices: SCNGeometrySource { get }
}
