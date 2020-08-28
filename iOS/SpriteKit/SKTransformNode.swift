
@available(iOS 11.0, *)
class SKTransformNode : SKNode {
  var xRotation: CGFloat
  var yRotation: CGFloat
  func setEulerAngles(_ euler: vector_float3)
  func eulerAngles() -> vector_float3
  func setRotationMatrix(_ rotationMatrix: matrix_float3x3)
  func rotationMatrix() -> matrix_float3x3
  func setQuaternion(_ quaternion: simd_quatf)
  func quaternion() -> simd_quatf
}
