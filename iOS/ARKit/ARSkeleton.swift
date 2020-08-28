
@available(iOS 13.0, *)
class ARSkeleton : NSObject {
  var definition: ARSkeletonDefinition { get }
  var __jointCount: Int { get }
  func isJointTracked(_ jointIndex: Int) -> Bool
}
@available(iOS 13.0, *)
class ARSkeleton3D : ARSkeleton {
  var __jointModelTransforms: UnsafePointer<simd_float4x4> { get }
  var __jointLocalTransforms: UnsafePointer<simd_float4x4> { get }
  func __modelTransform(forJointName jointName: ARSkeleton.JointName) -> simd_float4x4
  func __localTransform(forJointName jointName: ARSkeleton.JointName) -> simd_float4x4
}

@available(iOS 13.0, *)
extension ARSkeleton3D {
  @nonobjc var jointModelTransforms: [simd_float4x4] { get }
  @nonobjc var jointLocalTransforms: [simd_float4x4] { get }
  @nonobjc func modelTransform(for jointName: ARSkeleton.JointName) -> simd_float4x4?
  @nonobjc func localTransform(for jointName: ARSkeleton.JointName) -> simd_float4x4?
}
@available(iOS 13.0, *)
class ARSkeleton2D : ARSkeleton {
  var __jointLandmarks: UnsafePointer<simd_float2> { get }
  func __landmark(forJointNamed jointName: ARSkeleton.JointName) -> simd_float2
}

@available(iOS 13.0, *)
extension ARSkeleton2D {
  @nonobjc var jointLandmarks: [simd_float2] { get }
  @nonobjc func landmark(for jointName: ARSkeleton.JointName) -> simd_float2?
}
extension ARSkeleton.JointName {
  @available(iOS 14.0, *)
  /*not inherited*/ init?(_ recognizedPointKey: VNRecognizedPointKey)
}
