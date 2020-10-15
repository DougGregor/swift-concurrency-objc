
@available(iOS 7.0, *)
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fill
  case aspectFill
  case aspectFit
  case resizeFill
}
@available(iOS 8.0, *)
protocol SKSceneDelegate : NSObjectProtocol {
  optional func update(_ currentTime: TimeInterval, for scene: SKScene)
  @asyncHandler optional func didEvaluateActions(for scene: SKScene)
  @asyncHandler optional func didSimulatePhysics(for scene: SKScene)
  @asyncHandler optional func didApplyConstraints(for scene: SKScene)
  @asyncHandler optional func didFinishUpdate(for scene: SKScene)
}
class SKScene : SKEffectNode {
  init(size: CGSize)
  @available(iOS 10.0, *)
  func sceneDidLoad()
  var size: CGSize
  var scaleMode: SKSceneScaleMode
  @available(iOS 9.0, *)
  weak var camera: @sil_weak SKCameraNode?
  @available(iOS 9.0, *)
  weak var listener: @sil_weak SKNode?
  var backgroundColor: UIColor
  @available(iOS 8.0, *)
  weak var delegate: @sil_weak SKSceneDelegate?
  var anchorPoint: CGPoint
  var physicsWorld: SKPhysicsWorld { get }
  weak var view: @sil_weak SKView? { get }
  func convertPoint(fromView point: CGPoint) -> CGPoint
  func convertPoint(toView point: CGPoint) -> CGPoint
  func update(_ currentTime: TimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  @available(iOS 8.0, *)
  func didApplyConstraints()
  @available(iOS 8.0, *)
  func didFinishUpdate()
  func didMove(to view: SKView)
  func willMove(from view: SKView)
  func didChangeSize(_ oldSize: CGSize)
}
