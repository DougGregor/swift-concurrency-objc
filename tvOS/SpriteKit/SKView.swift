
class SKView : UIView {
  var isPaused: Bool
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  @available(tvOS 9.0, *)
  var showsQuadCount: Bool
  @available(tvOS 9.0, *)
  var showsPhysics: Bool
  @available(tvOS 9.0, *)
  var showsFields: Bool
  var isAsynchronous: Bool
  @available(tvOS 9.0, *)
  var allowsTransparency: Bool
  var ignoresSiblingOrder: Bool
  @available(tvOS 9.0, *)
  var shouldCullNonVisibleNodes: Bool
  @available(tvOS 10.0, *)
  var preferredFramesPerSecond: Int
  var disableDepthStencilBuffer: Bool
  @available(tvOS 10.0, *)
  weak var delegate: @sil_weak SKViewDelegate?
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  var frameInterval: Int
  @available(tvOS, introduced: 10.0, deprecated: 10.0)
  var preferredFrameRate: Float
  func presentScene(_ scene: SKScene?)
  func presentScene(_ scene: SKScene, transition: SKTransition)
  var scene: SKScene? { get }
  func texture(from node: SKNode) -> SKTexture?
  func texture(from node: SKNode, crop: CGRect) -> SKTexture?
  func convert(_ point: CGPoint, to scene: SKScene) -> CGPoint
  func convert(_ point: CGPoint, from scene: SKScene) -> CGPoint
}
@available(tvOS 10.0, *)
protocol SKViewDelegate : NSObjectProtocol {
  optional func view(_ view: SKView, shouldRenderAtTime time: TimeInterval) -> Bool
}
