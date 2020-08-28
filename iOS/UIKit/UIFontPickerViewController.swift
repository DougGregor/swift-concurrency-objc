
@available(iOS 13.0, *)
protocol UIFontPickerViewControllerDelegate : NSObjectProtocol {
  optional func fontPickerViewControllerDidCancel(_ viewController: UIFontPickerViewController)
  optional func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController)
}
@available(iOS 13.0, *)
class UIFontPickerViewController : UIViewController {
  init(configuration: UIFontPickerViewController.Configuration)
  @NSCopying var configuration: UIFontPickerViewController.Configuration { get }
  weak var delegate: @sil_weak UIFontPickerViewControllerDelegate?
  var selectedFontDescriptor: UIFontDescriptor?
}
