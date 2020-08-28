
extension SCNView {
  struct Option : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNView.Option {
  @available(tvOS 9.0, *)
  static let preferredRenderingAPI: SCNView.Option
  @available(tvOS 9.0, *)
  static let preferredDevice: SCNView.Option
  @available(tvOS 9.0, *)
  static let preferLowPowerDevice: SCNView.Option
}
@available(tvOS 11.0, *)
protocol SCNCameraControlConfiguration : NSObjectProtocol {
  var autoSwitchToFreeCamera: Bool { get set }
  var allowsTranslation: Bool { get set }
  var flyModeVelocity: CGFloat { get set }
  var panSensitivity: CGFloat { get set }
  var truckSensitivity: CGFloat { get set }
  var rotationSensitivity: CGFloat { get set }
}
class SCNView : UIView, SCNSceneRenderer, SCNTechniqueSupport {
  init(frame: CGRect, options: [String : Any]? = nil)
  var rendersContinuously: Bool
  var allowsCameraControl: Bool
  @available(tvOS 11.0, *)
  var cameraControlConfiguration: SCNCameraControlConfiguration { get }
  @available(tvOS 11.0, *)
  var defaultCameraController: SCNCameraController { get }
  func snapshot() -> UIImage
  @IBAction func play(_ sender: Any?)
  @IBAction func pause(_ sender: Any?)
  @IBAction func stop(_ sender: Any?)
  var preferredFramesPerSecond: Int
  @available(tvOS, introduced: 8.0, deprecated: 12.0, message: "OpenGL API deprecated, please use Metal instead. (Define SCN_SILENCE_GL_DEPRECATION to silence these warnings)")
  var eaglContext: EAGLContext?
  var antialiasingMode: SCNAntialiasingMode
}
