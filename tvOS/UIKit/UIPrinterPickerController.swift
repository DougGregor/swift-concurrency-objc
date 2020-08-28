
extension UIPrinterPickerController {
  typealias CompletionHandler = (UIPrinterPickerController, Bool, Error?) -> Void
}
protocol UIPrinterPickerControllerDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func printerPickerControllerParentViewController(_ printerPickerController: UIPrinterPickerController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func printerPickerController(_ printerPickerController: UIPrinterPickerController, shouldShow printer: UIPrinter) -> Bool
  @available(tvOS 8.0, *)
  optional func printerPickerControllerWillPresent(_ printerPickerController: UIPrinterPickerController)
  @available(tvOS 8.0, *)
  optional func printerPickerControllerDidPresent(_ printerPickerController: UIPrinterPickerController)
  @available(tvOS 8.0, *)
  optional func printerPickerControllerWillDismiss(_ printerPickerController: UIPrinterPickerController)
  @available(tvOS 8.0, *)
  optional func printerPickerControllerDidDismiss(_ printerPickerController: UIPrinterPickerController)
  @available(tvOS 8.0, *)
  optional func printerPickerControllerDidSelectPrinter(_ printerPickerController: UIPrinterPickerController)
}
@available(tvOS 8.0, *)
class UIPrinterPickerController : NSObject {
  /*not inherited*/ init(initiallySelectedPrinter printer: UIPrinter?)
  var selectedPrinter: UIPrinter? { get }
  weak var delegate: @sil_weak UIPrinterPickerControllerDelegate?
  func present(animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  func present(from rect: CGRect, in view: UIView, animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  func present(from item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  func dismiss(animated: Bool)
}
