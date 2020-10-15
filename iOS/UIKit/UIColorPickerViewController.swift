
@available(iOS 14.0, *)
protocol UIColorPickerViewControllerDelegate : NSObjectProtocol {
  @asyncHandler optional func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController)
  @asyncHandler optional func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController)
}
@available(iOS 14.0, *)
class UIColorPickerViewController : UIViewController {
  weak var delegate: @sil_weak UIColorPickerViewControllerDelegate?
  var selectedColor: UIColor
  var supportsAlpha: Bool
}
