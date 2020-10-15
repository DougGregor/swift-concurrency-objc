
extension UIScreen {
  @available(tvOS 3.2, *)
  class let didConnectNotification: NSNotification.Name
  @available(tvOS 3.2, *)
  class let didDisconnectNotification: NSNotification.Name
  @available(tvOS 3.2, *)
  class let modeDidChangeNotification: NSNotification.Name
  @available(tvOS 5.0, *)
  class let brightnessDidChangeNotification: NSNotification.Name
  @available(tvOS 11.0, *)
  class let capturedDidChangeNotification: NSNotification.Name
  enum OverscanCompensation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case scale
    case insetBounds
    @available(tvOS 9.0, *)
    case none
    @available(tvOS, introduced: 5.0, deprecated: 9.0, message: "Use UIScreenOverscanCompensationNone")
    static var insetApplicationFrame: UIScreen.OverscanCompensation { get }
  }
}
@available(tvOS 2.0, *)
class UIScreen : NSObject, UITraitEnvironment {
  @available(tvOS 3.2, *)
  class var screens: [UIScreen] { get }
  class var main: UIScreen { get }
  var bounds: CGRect { get }
  @available(tvOS 4.0, *)
  var scale: CGFloat { get }
  @available(tvOS 3.2, *)
  var currentMode: UIScreenMode? { get }
  @available(tvOS 5.0, *)
  var overscanCompensation: UIScreen.OverscanCompensation
  @available(tvOS 9.0, *)
  var overscanCompensationInsets: UIEdgeInsets { get }
  @available(tvOS 4.3, *)
  var mirrored: UIScreen? { get }
  @available(tvOS 11.0, *)
  var isCaptured: Bool { get }
  @available(tvOS 8.0, *)
  var coordinateSpace: UICoordinateSpace { get }
  @available(tvOS 8.0, *)
  var fixedCoordinateSpace: UICoordinateSpace { get }
  @available(tvOS 8.0, *)
  var nativeBounds: CGRect { get }
  @available(tvOS 8.0, *)
  var nativeScale: CGFloat { get }
  @available(tvOS 4.0, *)
  func displayLink(withTarget target: Any, selector sel: Selector) -> CADisplayLink?
  @available(tvOS 10.3, *)
  var maximumFramesPerSecond: Int { get }
  @available(tvOS 13.0, *)
  var calibratedLatency: CFTimeInterval { get }
  @available(tvOS 10.0, *)
  weak var focusedItem: @sil_weak UIFocusItem? { get }
  @available(tvOS 9.0, *)
  weak var focusedView: @sil_weak UIView? { get }
  @available(tvOS 9.0, *)
  var supportsFocus: Bool { get }
}
extension UIScreen {
  @available(tvOS 7.0, *)
  func snapshotView(afterScreenUpdates afterUpdates: Bool) -> UIView
}
