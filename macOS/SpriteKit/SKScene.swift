
@available(macOS 10.9, *)
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fill
  case aspectFill
  case aspectFit
  case resizeFill
}
@available(macOS 10.10, *)
protocol SKSceneDelegate : NSObjectProtocol {
  optional func update(_ currentTime: TimeInterval, for scene: SKScene)
  optional func didEvaluateActions(for scene: SKScene)
  optional func didSimulatePhysics(for scene: SKScene)
  optional func didApplyConstraints(for scene: SKScene)
  optional func didFinishUpdate(for scene: SKScene)
}
class SKScene : SKEffectNode {
  init(size: CGSize)
  @available(macOS 10.12, *)
  func sceneDidLoad()
  var size: CGSize
  var scaleMode: SKSceneScaleMode
  @available(macOS 10.11, *)
  weak var camera: @sil_weak SKCameraNode?
  @available(macOS 10.11, *)
  weak var listener: @sil_weak SKNode?
  var backgroundColor: NSColor
  @available(macOS 10.10, *)
  weak var delegate: @sil_weak SKSceneDelegate?
  var anchorPoint: CGPoint
  var physicsWorld: SKPhysicsWorld { get }
  weak var view: @sil_weak SKView? { get }
  func convertPoint(fromView point: CGPoint) -> CGPoint
  func convertPoint(toView point: CGPoint) -> CGPoint
  func update(_ currentTime: TimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  @available(macOS 10.10, *)
  func didApplyConstraints()
  @available(macOS 10.10, *)
  func didFinishUpdate()
  func didMove(to view: SKView)
  func willMove(from view: SKView)
  func didChangeSize(_ oldSize: CGSize)
}
