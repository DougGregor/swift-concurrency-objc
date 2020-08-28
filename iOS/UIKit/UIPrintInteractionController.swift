
extension UIPrintInteractionController {
  typealias CompletionHandler = (UIPrintInteractionController, Bool, Error?) -> Void
}
extension UIPrinter {
  @available(iOS 9.0, *)
  enum CutterBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case noCut
    case printerDefault
    case cutAfterEachPage
    case cutAfterEachCopy
    case cutAfterEachJob
  }
}
@available(iOS 4.2, *)
class UIPrintInteractionController : NSObject {
  class var isPrintingAvailable: Bool { get }
  class var printableUTIs: Set<String> { get }
  class func canPrint(_ url: URL) -> Bool
  class func canPrint(_ data: Data) -> Bool
  class var shared: UIPrintInteractionController { get }
  var printInfo: UIPrintInfo?
  weak var delegate: @sil_weak UIPrintInteractionControllerDelegate?
  @available(iOS, introduced: 4.2, deprecated: 10.0, message: "Pages can be removed from the print preview, so page range is always shown.")
  var showsPageRange: Bool
  @available(iOS 7.0, *)
  var showsNumberOfCopies: Bool
  @available(iOS 8.0, *)
  var showsPaperSelectionForLoadedPapers: Bool
  var printPaper: UIPrintPaper? { get }
  var printPageRenderer: UIPrintPageRenderer?
  var printFormatter: UIPrintFormatter?
  var printingItem: Any?
  var printingItems: [Any]?
  func present(animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  func present(from rect: CGRect, in view: UIView, animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  func present(from item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  func print(to printer: UIPrinter, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  func dismiss(animated: Bool)
}
protocol UIPrintInteractionControllerDelegate : NSObjectProtocol {
  @available(iOS 4.2, *)
  optional func printInteractionControllerParentViewController(_ printInteractionController: UIPrintInteractionController) -> UIViewController?
  @available(iOS 4.2, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, choosePaper paperList: [UIPrintPaper]) -> UIPrintPaper
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillPresentPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidPresentPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillDismissPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidDismissPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillStartJob(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidFinishJob(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 7.0, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, cutLengthFor paper: UIPrintPaper) -> CGFloat
  @available(iOS 9.0, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, chooseCutterBehavior availableBehaviors: [Any]) -> UIPrinter.CutterBehavior
}
