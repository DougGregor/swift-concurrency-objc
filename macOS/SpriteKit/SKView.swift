
class SKView : NSView, NSSecureCoding {
  var isPaused: Bool
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  @available(macOS 10.10, *)
  var showsQuadCount: Bool
  @available(macOS 10.10, *)
  var showsPhysics: Bool
  @available(macOS 10.10, *)
  var showsFields: Bool
  var isAsynchronous: Bool
  @available(macOS 10.10, *)
  var allowsTransparency: Bool
  var ignoresSiblingOrder: Bool
  @available(macOS 10.10, *)
  var shouldCullNonVisibleNodes: Bool
  @available(macOS 10.12, *)
  var preferredFramesPerSecond: Int
  var disableDepthStencilBuffer: Bool
  @available(macOS 10.12, *)
  weak var delegate: @sil_weak SKViewDelegate?
  @available(macOS, introduced: 10.8, deprecated: 10.12)
  var frameInterval: Int
  @available(macOS, introduced: 10.12, deprecated: 10.12)
  var preferredFrameRate: Float
  func presentScene(_ scene: SKScene?)
  func presentScene(_ scene: SKScene, transition: SKTransition)
  var scene: SKScene? { get }
  func texture(from node: SKNode) -> SKTexture?
  func texture(from node: SKNode, crop: CGRect) -> SKTexture?
  func convert(_ point: CGPoint, to scene: SKScene) -> CGPoint
  func convert(_ point: CGPoint, from scene: SKScene) -> CGPoint
}
@available(macOS 10.12, *)
protocol SKViewDelegate : NSObjectProtocol {
  optional func view(_ view: SKView, shouldRenderAtTime time: TimeInterval) -> Bool
}
