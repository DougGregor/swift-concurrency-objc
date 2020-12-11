
extension SCNPhysicsWorld {
  struct TestOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct TestSearchMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNPhysicsWorld.TestOption {
  @available(macOS 10.10, *)
  static let collisionBitMask: SCNPhysicsWorld.TestOption
  @available(macOS 10.10, *)
  static let searchMode: SCNPhysicsWorld.TestOption
  @available(macOS 10.10, *)
  static let backfaceCulling: SCNPhysicsWorld.TestOption
}
extension SCNPhysicsWorld.TestSearchMode {
  @available(macOS 10.10, *)
  static let any: SCNPhysicsWorld.TestSearchMode
  @available(macOS 10.10, *)
  static let closest: SCNPhysicsWorld.TestSearchMode
  @available(macOS 10.10, *)
  static let all: SCNPhysicsWorld.TestSearchMode
}
@available(macOS 10.10, *)
protocol SCNPhysicsContactDelegate : NSObjectProtocol {
  optional func physicsWorld(_ world: SCNPhysicsWorld, didBegin contact: SCNPhysicsContact)
  optional func physicsWorld(_ world: SCNPhysicsWorld, didUpdate contact: SCNPhysicsContact)
  optional func physicsWorld(_ world: SCNPhysicsWorld, didEnd contact: SCNPhysicsContact)
}
@available(macOS 10.10, *)
class SCNPhysicsWorld : NSObject, NSSecureCoding {
  var gravity: SCNVector3
  var speed: CGFloat
  var timeStep: TimeInterval
  weak var contactDelegate: @sil_weak SCNPhysicsContactDelegate?
  func addBehavior(_ behavior: SCNPhysicsBehavior)
  func removeBehavior(_ behavior: SCNPhysicsBehavior)
  func removeAllBehaviors()
  var allBehaviors: [SCNPhysicsBehavior] { get }
  func rayTestWithSegment(from origin: SCNVector3, to dest: SCNVector3, options: [SCNPhysicsWorld.TestOption : Any]? = nil) -> [SCNHitTestResult]
  func contactTestBetween(_ bodyA: SCNPhysicsBody, _ bodyB: SCNPhysicsBody, options: [SCNPhysicsWorld.TestOption : Any]? = nil) -> [SCNPhysicsContact]
  func contactTest(with body: SCNPhysicsBody, options: [SCNPhysicsWorld.TestOption : Any]? = nil) -> [SCNPhysicsContact]
  func convexSweepTest(with shape: SCNPhysicsShape, from: SCNMatrix4, to: SCNMatrix4, options: [SCNPhysicsWorld.TestOption : Any]? = nil) -> [SCNPhysicsContact]
  func updateCollisionPairs()
}
