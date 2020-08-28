
@available(tvOS 14.0, *)
protocol UIColorPickerViewControllerDelegate : NSObjectProtocol {
  optional func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController)
  optional func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController)
}
@available(tvOS 14.0, *)
class UIColorPickerViewController : UIViewController {
  weak var delegate: @sil_weak UIColorPickerViewControllerDelegate?
  var selectedColor: UIColor
  var supportsAlpha: Bool
}
