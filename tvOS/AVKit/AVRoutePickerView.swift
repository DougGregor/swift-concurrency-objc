
@available(tvOS 11.0, *)
class AVRoutePickerView : UIView {
  weak var delegate: @sil_weak AVRoutePickerViewDelegate?
  var activeTintColor: UIColor!
  @available(tvOS 11.0, *)
  var routePickerButtonStyle: AVRoutePickerViewButtonStyle
  @available(tvOS 13.0, *)
  var prioritizesVideoDevices: Bool
}
@available(tvOS 11.0, *)
enum AVRoutePickerViewButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case system
  case plain
  case custom
}
protocol AVRoutePickerViewDelegate : NSObjectProtocol {
  @available(tvOS 11.0, *)
  optional func routePickerViewWillBeginPresentingRoutes(_ routePickerView: AVRoutePickerView)
  @available(tvOS 11.0, *)
  @asyncHandler optional func routePickerViewDidEndPresentingRoutes(_ routePickerView: AVRoutePickerView)
}
