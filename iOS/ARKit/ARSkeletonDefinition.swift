
extension ARSkeleton {
  @available(iOS 13.0, *)
  struct JointName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension ARSkeleton.JointName {
  @available(iOS 13.0, *)
  static let root: ARSkeleton.JointName
  @available(iOS 13.0, *)
  static let head: ARSkeleton.JointName
  @available(iOS 13.0, *)
  static let leftHand: ARSkeleton.JointName
  @available(iOS 13.0, *)
  static let rightHand: ARSkeleton.JointName
  @available(iOS 13.0, *)
  static let leftFoot: ARSkeleton.JointName
  @available(iOS 13.0, *)
  static let rightFoot: ARSkeleton.JointName
  @available(iOS 13.0, *)
  static let leftShoulder: ARSkeleton.JointName
  @available(iOS 13.0, *)
  static let rightShoulder: ARSkeleton.JointName
}
@available(iOS 13.0, *)
class ARSkeletonDefinition : NSObject {
  class var defaultBody3D: ARSkeletonDefinition { get }
  class var defaultBody2D: ARSkeletonDefinition { get }
  var jointCount: Int { get }
  var jointNames: [String] { get }
  var __parentIndices: [NSNumber] { get }
  var neutralBodySkeleton3D: ARSkeleton3D? { get }
  func __index(forJointName jointName: ARSkeleton.JointName) -> Int
}

@available(iOS 13.0, *)
extension ARSkeletonDefinition {
  @nonobjc var parentIndices: [Int] { get }
  @nonobjc func index(for jointName: ARSkeleton.JointName) -> Int
}
