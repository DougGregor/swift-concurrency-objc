
@available(watchOS 2.0, *)
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fill
  case aspectFill
  case aspectFit
  case resizeFill
}
@available(watchOS 1.0, *)
protocol SKSceneDelegate : NSObjectProtocol {
  optional func update(_ currentTime: TimeInterval, for scene: SKScene)
  @asyncHandler optional func didEvaluateActions(for scene: SKScene)
  @asyncHandler optional func didSimulatePhysics(for scene: SKScene)
  @asyncHandler optional func didApplyConstraints(for scene: SKScene)
  @asyncHandler optional func didFinishUpdate(for scene: SKScene)
}
class SKScene : SKEffectNode {
  init(size: CGSize)
  @available(watchOS 3.0, *)
  func sceneDidLoad()
  var size: CGSize
  var scaleMode: SKSceneScaleMode
  @available(watchOS 2.0, *)
  weak var camera: @sil_weak SKCameraNode?
  @available(watchOS 2.0, *)
  weak var listener: @sil_weak SKNode?
  var backgroundColor: UIColor
  @available(watchOS 2.0, *)
  weak var delegate: @sil_weak SKSceneDelegate?
  var anchorPoint: CGPoint
  var physicsWorld: SKPhysicsWorld { get }
  func update(_ currentTime: TimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  @available(watchOS 1.0, *)
  func didApplyConstraints()
  @available(watchOS 1.0, *)
  func didFinishUpdate()
  func didChangeSize(_ oldSize: CGSize)
}
