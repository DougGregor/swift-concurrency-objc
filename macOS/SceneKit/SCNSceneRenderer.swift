
@available(macOS 10.10, *)
enum SCNAntialiasingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case multisampling2X
  case multisampling4X
  case multisampling8X
  case multisampling16X
}
@available(macOS 10.11, *)
enum SCNRenderingAPI : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case metal
  case openGLLegacy
  case openGLCore32
  case openGLCore41
}
@available(macOS 10.11, *)
struct SCNDebugOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var showPhysicsShapes: SCNDebugOptions { get }
  static var showBoundingBoxes: SCNDebugOptions { get }
  static var showLightInfluences: SCNDebugOptions { get }
  static var showLightExtents: SCNDebugOptions { get }
  static var showPhysicsFields: SCNDebugOptions { get }
  static var showWireframe: SCNDebugOptions { get }
  @available(macOS 10.13, *)
  static var renderAsWireframe: SCNDebugOptions { get }
  @available(macOS 10.13, *)
  static var showSkeletons: SCNDebugOptions { get }
  @available(macOS 10.13, *)
  static var showCreases: SCNDebugOptions { get }
  @available(macOS 10.13, *)
  static var showConstraints: SCNDebugOptions { get }
  @available(macOS 10.13, *)
  static var showCameras: SCNDebugOptions { get }
}
protocol SCNSceneRenderer : NSObjectProtocol {
  var scene: SCNScene? { get set }
  @available(macOS 10.10, *)
  var sceneTime: TimeInterval { get set }
  weak var delegate: @sil_weak SCNSceneRendererDelegate? { get set }
  func hitTest(_ point: CGPoint, options: [SCNHitTestOption : Any]? = nil) -> [SCNHitTestResult]
  @available(macOS 10.9, *)
  func isNode(_ node: SCNNode, insideFrustumOf pointOfView: SCNNode) -> Bool
  @available(macOS 10.11, *)
  func nodesInsideFrustum(of pointOfView: SCNNode) -> [SCNNode]
  @available(macOS 10.9, *)
  func projectPoint(_ point: SCNVector3) -> SCNVector3
  @available(macOS 10.9, *)
  func unprojectPoint(_ point: SCNVector3) -> SCNVector3
  var isPlaying: Bool { get set }
  var loops: Bool { get set }
  var pointOfView: SCNNode? { get set }
  var autoenablesDefaultLighting: Bool { get set }
  var isJitteringEnabled: Bool { get set }
  @available(macOS 10.15, *)
  var isTemporalAntialiasingEnabled: Bool { get set }
  @available(macOS 10.9, *)
  func prepare(_ object: Any, shouldAbortBlock block: (() -> Bool)? = nil) -> Bool
  @available(macOS 10.10, *)
  func prepare(_ objects: [Any], completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.10, *)
  func prepare(_ objects: [Any]) async -> Bool
  @available(macOS 10.9, *)
  var showsStatistics: Bool { get set }
  @available(macOS 10.11, *)
  var debugOptions: SCNDebugOptions { get set }
  @available(macOS 10.11, *)
  var renderingAPI: SCNRenderingAPI { get }
  var context: UnsafeMutableRawPointer? { get }
  @available(macOS 10.11, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  @available(macOS 10.11, *)
  var currentRenderPassDescriptor: MTLRenderPassDescriptor { get }
  @available(macOS 10.11, *)
  var device: MTLDevice? { get }
  @available(macOS 10.11, *)
  var colorPixelFormat: MTLPixelFormat { get }
  @available(macOS 10.11, *)
  var depthPixelFormat: MTLPixelFormat { get }
  @available(macOS 10.11, *)
  var stencilPixelFormat: MTLPixelFormat { get }
  @available(macOS 10.11, *)
  var commandQueue: MTLCommandQueue? { get }
  @available(macOS 10.11, *)
  var audioListener: SCNNode? { get set }
  @available(macOS 10.15, *)
  var currentViewport: CGRect { get }
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  var currentTime: TimeInterval { get set }
  @available(macOS 10.15, *)
  var usesReverseZ: Bool { get set }
}
protocol SCNSceneRendererDelegate : NSObjectProtocol {
  @available(macOS 10.10, *)
  optional func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval)
  @available(macOS 10.10, *)
  @asyncHandler optional func renderer(_ renderer: SCNSceneRenderer, didApplyAnimationsAtTime time: TimeInterval)
  @available(macOS 10.10, *)
  @asyncHandler optional func renderer(_ renderer: SCNSceneRenderer, didSimulatePhysicsAtTime time: TimeInterval)
  @available(macOS 10.13, *)
  @asyncHandler optional func renderer(_ renderer: SCNSceneRenderer, didApplyConstraintsAtTime time: TimeInterval)
  optional func renderer(_ renderer: SCNSceneRenderer, willRenderScene scene: SCNScene, atTime time: TimeInterval)
  @asyncHandler optional func renderer(_ renderer: SCNSceneRenderer, didRenderScene scene: SCNScene, atTime time: TimeInterval)
}
