
extension SCNView {
  struct Option : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNView.Option {
  @available(macOS 10.11, *)
  static let preferredRenderingAPI: SCNView.Option
  @available(macOS 10.11, *)
  static let preferredDevice: SCNView.Option
  @available(macOS 10.11, *)
  static let preferLowPowerDevice: SCNView.Option
}
@available(macOS 10.13, *)
protocol SCNCameraControlConfiguration : NSObjectProtocol {
  var autoSwitchToFreeCamera: Bool { get set }
  var allowsTranslation: Bool { get set }
  var flyModeVelocity: CGFloat { get set }
  var panSensitivity: CGFloat { get set }
  var truckSensitivity: CGFloat { get set }
  var rotationSensitivity: CGFloat { get set }
}
class SCNView : NSView, SCNSceneRenderer, SCNTechniqueSupport {
  init(frame: NSRect, options: [String : Any]? = nil)
  var rendersContinuously: Bool
  @NSCopying var backgroundColor: NSColor
  var allowsCameraControl: Bool
  @available(macOS 10.13, *)
  var cameraControlConfiguration: SCNCameraControlConfiguration { get }
  @available(macOS 10.13, *)
  var defaultCameraController: SCNCameraController { get }
  @available(macOS 10.10, *)
  func snapshot() -> NSImage
  @IBAction func play(_ sender: Any?)
  @IBAction func pause(_ sender: Any?)
  @IBAction func stop(_ sender: Any?)
  @available(macOS 10.12, *)
  var preferredFramesPerSecond: Int
  @available(macOS 10.15, *)
  var drawableResizesAsynchronously: Bool
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated, please use Metal instead. (Define SCN_SILENCE_GL_DEPRECATION to silence these warnings)")
  var openGLContext: NSOpenGLContext?
  @available(macOS 10.10, *)
  var antialiasingMode: SCNAntialiasingMode
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated, please use Metal instead. (Define SCN_SILENCE_GL_DEPRECATION to silence these warnings)")
  var pixelFormat: NSOpenGLPixelFormat?
}
