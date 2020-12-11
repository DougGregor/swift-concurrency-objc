
protocol SKPhysicsContactDelegate : NSObjectProtocol {
  optional func didBegin(_ contact: SKPhysicsContact)
  optional func didEnd(_ contact: SKPhysicsContact)
}
class SKPhysicsWorld : NSObject, NSSecureCoding {
  var gravity: CGVector
  var speed: CGFloat
  unowned(unsafe) var contactDelegate: @sil_unmanaged SKPhysicsContactDelegate?
  func add(_ joint: SKPhysicsJoint)
  func remove(_ joint: SKPhysicsJoint)
  func removeAllJoints()
  @available(tvOS 9.0, *)
  func sampleFields(at position: vector_float3) -> vector_float3
  func body(at point: CGPoint) -> SKPhysicsBody?
  func body(in rect: CGRect) -> SKPhysicsBody?
  func body(alongRayStart start: CGPoint, end: CGPoint) -> SKPhysicsBody?
  func enumerateBodies(at point: CGPoint, using block: @escaping (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodies(in rect: CGRect, using block: @escaping (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodies(alongRayStart start: CGPoint, end: CGPoint, using block: @escaping (SKPhysicsBody, CGPoint, CGVector, UnsafeMutablePointer<ObjCBool>) -> Void)
}
