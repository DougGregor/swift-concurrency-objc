
@available(iOS 11.0, *)
class AVRoutePickerView : UIView {
  weak var delegate: @sil_weak AVRoutePickerViewDelegate?
  var activeTintColor: UIColor!
  @available(iOS 13.0, *)
  var prioritizesVideoDevices: Bool
}
protocol AVRoutePickerViewDelegate : NSObjectProtocol {
  @available(iOS 11.0, *)
  optional func routePickerViewWillBeginPresentingRoutes(_ routePickerView: AVRoutePickerView)
  @available(iOS 11.0, *)
  @asyncHandler optional func routePickerViewDidEndPresentingRoutes(_ routePickerView: AVRoutePickerView)
}
