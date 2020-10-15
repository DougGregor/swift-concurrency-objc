
extension UIScreen {
  @available(iOS 3.2, *)
  class let didConnectNotification: NSNotification.Name
  @available(iOS 3.2, *)
  class let didDisconnectNotification: NSNotification.Name
  @available(iOS 3.2, *)
  class let modeDidChangeNotification: NSNotification.Name
  @available(iOS 5.0, *)
  class let brightnessDidChangeNotification: NSNotification.Name
  @available(iOS 11.0, *)
  class let capturedDidChangeNotification: NSNotification.Name
  enum OverscanCompensation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case scale
    case insetBounds
    @available(iOS 9.0, *)
    case none
    @available(iOS, introduced: 5.0, deprecated: 9.0, message: "Use UIScreenOverscanCompensationNone")
    static var insetApplicationFrame: UIScreen.OverscanCompensation { get }
  }
}
@available(iOS 2.0, *)
class UIScreen : NSObject, UITraitEnvironment {
  @available(iOS 3.2, *)
  class var screens: [UIScreen] { get }
  class var main: UIScreen { get }
  var bounds: CGRect { get }
  @available(iOS 4.0, *)
  var scale: CGFloat { get }
  @available(iOS 3.2, *)
  var availableModes: [UIScreenMode] { get }
  @available(iOS 4.3, *)
  var preferredMode: UIScreenMode? { get }
  @available(iOS 3.2, *)
  var currentMode: UIScreenMode?
  @available(iOS 5.0, *)
  var overscanCompensation: UIScreen.OverscanCompensation
  @available(iOS 9.0, *)
  var overscanCompensationInsets: UIEdgeInsets { get }
  @available(iOS 4.3, *)
  var mirrored: UIScreen? { get }
  @available(iOS 11.0, *)
  var isCaptured: Bool { get }
  @available(iOS 5.0, *)
  var brightness: CGFloat
  @available(iOS 5.0, *)
  var wantsSoftwareDimming: Bool
  @available(iOS 8.0, *)
  var coordinateSpace: UICoordinateSpace { get }
  @available(iOS 8.0, *)
  var fixedCoordinateSpace: UICoordinateSpace { get }
  @available(iOS 8.0, *)
  var nativeBounds: CGRect { get }
  @available(iOS 8.0, *)
  var nativeScale: CGFloat { get }
  @available(iOS 4.0, *)
  func displayLink(withTarget target: Any, selector sel: Selector) -> CADisplayLink?
  @available(iOS 10.3, *)
  var maximumFramesPerSecond: Int { get }
  @available(iOS 13.0, *)
  var calibratedLatency: CFTimeInterval { get }
  @available(iOS 10.0, *)
  weak var focusedItem: @sil_weak UIFocusItem? { get }
  @available(iOS 9.0, *)
  weak var focusedView: @sil_weak UIView? { get }
  @available(iOS 9.0, *)
  var supportsFocus: Bool { get }
  @available(iOS, introduced: 2.0, deprecated: 9.0)
  var applicationFrame: CGRect { get }
}
extension UIScreen {
  @available(iOS 7.0, *)
  func snapshotView(afterScreenUpdates afterUpdates: Bool) -> UIView
}
