
@available(macOS 10.9, *)
enum SKBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alpha
  case add
  case subtract
  case multiply
  case multiplyX2
  case screen
  case replace
  case multiplyAlpha
}
class SKNode : NSResponder, NSCopying, NSSecureCoding {
  convenience init?(fileNamed filename: String)
  @available(macOS 10.14, *)
  convenience init(fileNamed filename: String, securelyWithClasses classes: Set<AnyHashable>) throws
  var frame: CGRect { get }
  func calculateAccumulatedFrame() -> CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var zRotation: CGFloat
  var xScale: CGFloat
  var yScale: CGFloat
  var speed: CGFloat
  var alpha: CGFloat
  var isPaused: Bool
  var isHidden: Bool
  var isUserInteractionEnabled: Bool
  var parent: SKNode? { get }
  var children: [SKNode] { get }
  var name: String?
  var scene: SKScene? { get }
  var physicsBody: SKPhysicsBody?
  var userData: NSMutableDictionary?
  @NSCopying var reachConstraints: SKReachConstraints?
  var constraints: [SKConstraint]?
  @available(macOS, introduced: 10.12, deprecated: 10.12)
  var attributeValues: [String : SKAttributeValue]
  @available(macOS, introduced: 10.12, deprecated: 10.12)
  func value(forAttributeNamed key: String) -> SKAttributeValue?
  @available(macOS, introduced: 10.12, deprecated: 10.12)
  func setValue(_ value: SKAttributeValue, forAttribute key: String)
  func setScale(_ scale: CGFloat)
  func addChild(_ node: SKNode)
  func insertChild(_ node: SKNode, at index: Int)
  func removeChildren(in nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  @available(macOS 10.11, *)
  func move(toParent parent: SKNode)
  func childNode(withName name: String) -> SKNode?
  func enumerateChildNodes(withName name: String, using block: @escaping (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  subscript(name: String) -> [SKNode] { get }
  func inParentHierarchy(_ parent: SKNode) -> Bool
  func run(_ action: SKAction)
  func run(_ action: SKAction, completion block: @escaping () -> Void)
  func run(_ action: SKAction) async
  func run(_ action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func action(forKey key: String) -> SKAction?
  func removeAction(forKey key: String)
  func removeAllActions()
  func contains(_ p: CGPoint) -> Bool
  func atPoint(_ p: CGPoint) -> SKNode
  func nodes(at p: CGPoint) -> [SKNode]
  func convert(_ point: CGPoint, from node: SKNode) -> CGPoint
  func convert(_ point: CGPoint, to node: SKNode) -> CGPoint
  func intersects(_ node: SKNode) -> Bool
  func isEqual(to node: SKNode) -> Bool
}
extension NSEvent {
  func location(in node: SKNode) -> CGPoint
}
