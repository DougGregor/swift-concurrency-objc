
enum SCNAntialiasingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case multisampling2X
  case multisampling4X
}
@available(watchOS 2.0, *)
enum SCNRenderingAPI : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case metal
  case openGLES2
}
@available(watchOS 2.0, *)
struct SCNDebugOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var showPhysicsShapes: SCNDebugOptions { get }
  static var showBoundingBoxes: SCNDebugOptions { get }
  static var showLightInfluences: SCNDebugOptions { get }
  static var showLightExtents: SCNDebugOptions { get }
  static var showPhysicsFields: SCNDebugOptions { get }
  static var showWireframe: SCNDebugOptions { get }
  @available(watchOS 4.0, *)
  static var renderAsWireframe: SCNDebugOptions { get }
  @available(watchOS 4.0, *)
  static var showSkeletons: SCNDebugOptions { get }
  @available(watchOS 4.0, *)
  static var showCreases: SCNDebugOptions { get }
  @available(watchOS 4.0, *)
  static var showConstraints: SCNDebugOptions { get }
  @available(watchOS 4.0, *)
  static var showCameras: SCNDebugOptions { get }
}
protocol SCNSceneRenderer : NSObjectProtocol {
  var scene: SCNScene? { get set }
  var sceneTime: TimeInterval { get set }
  weak var delegate: @sil_weak SCNSceneRendererDelegate? { get set }
  func hitTest(_ point: CGPoint, options: [SCNHitTestOption : Any]? = nil) -> [SCNHitTestResult]
  func isNode(_ node: SCNNode, insideFrustumOf pointOfView: SCNNode) -> Bool
  @available(watchOS 2.0, *)
  func nodesInsideFrustum(of pointOfView: SCNNode) -> [SCNNode]
  func projectPoint(_ point: SCNVector3) -> SCNVector3
  func unprojectPoint(_ point: SCNVector3) -> SCNVector3
  var isPlaying: Bool { get set }
  var loops: Bool { get set }
  var pointOfView: SCNNode? { get set }
  var autoenablesDefaultLighting: Bool { get set }
  var isJitteringEnabled: Bool { get set }
  @available(watchOS 6.0, *)
  var isTemporalAntialiasingEnabled: Bool { get set }
  func prepare(_ object: Any, shouldAbortBlock block: (() -> Bool)? = nil) -> Bool
  func prepare(_ objects: [Any], completionHandler: ((Bool) -> Void)? = nil)
  var showsStatistics: Bool { get set }
  @available(watchOS 2.0, *)
  var debugOptions: SCNDebugOptions { get set }
  @available(watchOS 2.0, *)
  var renderingAPI: SCNRenderingAPI { get }
  @available(watchOS 2.0, *)
  var audioListener: SCNNode? { get set }
  @available(watchOS 6.0, *)
  var currentViewport: CGRect { get }
  @available(watchOS 6.0, *)
  var usesReverseZ: Bool { get set }
}
protocol SCNSceneRendererDelegate : NSObjectProtocol {
  optional func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval)
  optional func renderer(_ renderer: SCNSceneRenderer, didApplyAnimationsAtTime time: TimeInterval)
  optional func renderer(_ renderer: SCNSceneRenderer, didSimulatePhysicsAtTime time: TimeInterval)
  @available(watchOS 4.0, *)
  optional func renderer(_ renderer: SCNSceneRenderer, didApplyConstraintsAtTime time: TimeInterval)
  optional func renderer(_ renderer: SCNSceneRenderer, willRenderScene scene: SCNScene, atTime time: TimeInterval)
  optional func renderer(_ renderer: SCNSceneRenderer, didRenderScene scene: SCNScene, atTime time: TimeInterval)
}
