
extension AVRoutePickerView {
  @available(macOS 10.15, *)
  enum ButtonState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case normal
    case normalHighlighted
    case active
    case activeHighlighted
  }
}
@available(macOS 10.15, *)
class AVRoutePickerView : NSView {
  weak var delegate: @sil_weak AVRoutePickerViewDelegate?
  func routePickerButtonColor(for state: AVRoutePickerView.ButtonState) -> NSColor
  func setRoutePickerButtonColor(_ color: NSColor?, for state: AVRoutePickerView.ButtonState)
  var isRoutePickerButtonBordered: Bool
  var player: AVPlayer?
}
protocol AVRoutePickerViewDelegate : NSObjectProtocol {
  @available(macOS 10.15, *)
  optional func routePickerViewWillBeginPresentingRoutes(_ routePickerView: AVRoutePickerView)
  @available(macOS 10.15, *)
  @asyncHandler optional func routePickerViewDidEndPresentingRoutes(_ routePickerView: AVRoutePickerView)
}
