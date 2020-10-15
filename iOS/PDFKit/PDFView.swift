
@available(iOS 11.0, *)
enum PDFDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case singlePage
  case singlePageContinuous
  case twoUp
  case twoUpContinuous
}
@available(iOS 11.0, *)
enum PDFDisplayDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vertical
  case horizontal
}
@available(iOS 11.0, *)
struct PDFAreaOfInterest : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var pageArea: PDFAreaOfInterest { get }
  static var textArea: PDFAreaOfInterest { get }
  static var annotationArea: PDFAreaOfInterest { get }
  static var linkArea: PDFAreaOfInterest { get }
  static var controlArea: PDFAreaOfInterest { get }
  static var textFieldArea: PDFAreaOfInterest { get }
  static var iconArea: PDFAreaOfInterest { get }
  static var popupArea: PDFAreaOfInterest { get }
  static var imageArea: PDFAreaOfInterest { get }
}
@available(iOS 11.0, *)
enum PDFInterpolationQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case low
  case high
}
extension NSNotification.Name {
  @available(iOS 11.0, *)
  static let PDFViewDocumentChanged: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewChangedHistory: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewPageChanged: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewScaleChanged: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewAnnotationHit: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewCopyPermission: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewPrintPermission: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewAnnotationWillHit: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewSelectionChanged: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewDisplayModeChanged: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewDisplayBoxChanged: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFViewVisiblePagesChanged: NSNotification.Name
}
@available(iOS 11.0, *)
class PDFView : UIView, UIGestureRecognizerDelegate {
  var document: PDFDocument?
  var canGoToFirstPage: Bool { get }
  @IBAction func goToFirstPage(_ sender: Any?)
  var canGoToLastPage: Bool { get }
  @IBAction func goToLastPage(_ sender: Any?)
  var canGoToNextPage: Bool { get }
  @IBAction func goToNextPage(_ sender: Any?)
  var canGoToPreviousPage: Bool { get }
  @IBAction func goToPreviousPage(_ sender: Any?)
  var canGoBack: Bool { get }
  @IBAction func goBack(_ sender: Any?)
  var canGoForward: Bool { get }
  @IBAction func goForward(_ sender: Any?)
  var currentPage: PDFPage? { get }
  func go(to page: PDFPage)
  var currentDestination: PDFDestination? { get }
  func go(to destination: PDFDestination)
  func go(to selection: PDFSelection)
  func go(to rect: CGRect, on page: PDFPage)
  var displayMode: PDFDisplayMode
  @available(iOS 11.0, *)
  var displayDirection: PDFDisplayDirection
  var displaysPageBreaks: Bool
  @available(iOS 11.0, *)
  var pageBreakMargins: UIEdgeInsets
  var displayBox: PDFDisplayBox
  var displaysAsBook: Bool
  @available(iOS 11.0, *)
  var displaysRTL: Bool
  @available(iOS 11.0, *)
  var interpolationQuality: PDFInterpolationQuality
  @available(iOS 12.0, *)
  var pageShadowsEnabled: Bool
  @available(iOS 11.0, *)
  func usePageViewController(_ enable: Bool, withViewOptions viewOptions: [AnyHashable : Any]? = nil)
  @available(iOS 11.0, *)
  var isUsingPageViewController: Bool { get }
  weak var delegate: @sil_weak PDFViewDelegate?
  var scaleFactor: CGFloat
  @available(iOS 11.0, *)
  var minScaleFactor: CGFloat
  @available(iOS 11.0, *)
  var maxScaleFactor: CGFloat
  var autoScales: Bool
  @available(iOS 11.0, *)
  var scaleFactorForSizeToFit: CGFloat { get }
  @IBAction func zoomIn(_ sender: Any?)
  var canZoomIn: Bool { get }
  @IBAction func zoomOut(_ sender: Any?)
  var canZoomOut: Bool { get }
  func areaOfInterest(forMouse event: UIEvent) -> PDFAreaOfInterest
  func areaOfInterest(for cursorLocation: CGPoint) -> PDFAreaOfInterest
  @available(iOS 11.0, *)
  func perform(_ action: PDFAction)
  var currentSelection: PDFSelection?
  @available(iOS 11.0, *)
  func setCurrentSelection(_ selection: PDFSelection?, animate: Bool)
  func clearSelection()
  @IBAction func scrollSelectionToVisible(_ sender: Any?)
  @available(iOS 11.0, *)
  var highlightedSelections: [PDFSelection]?
  @available(iOS 11.0, *)
  func draw(_ page: PDFPage, to context: CGContext)
  @available(iOS 11.0, *)
  func drawPagePost(_ page: PDFPage, to context: CGContext)
  func page(for point: CGPoint, nearest: Bool) -> PDFPage?
  func convert(_ point: CGPoint, to page: PDFPage) -> CGPoint
  func convert(_ rect: CGRect, to page: PDFPage) -> CGRect
  func convert(_ point: CGPoint, from page: PDFPage) -> CGPoint
  func convert(_ rect: CGRect, from page: PDFPage) -> CGRect
  var documentView: UIView? { get }
  func layoutDocumentView()
  @available(iOS 11.0, *)
  func annotationsChanged(on page: PDFPage)
  func rowSize(for page: PDFPage) -> CGSize
  @available(iOS 11.0, *)
  var visiblePages: [PDFPage] { get }
  @available(iOS 11.0, *)
  var enableDataDetectors: Bool
}
protocol PDFViewDelegate : NSObjectProtocol {
  @available(iOS 11.0, *)
  optional func pdfViewWillClick(onLink sender: PDFView, with url: URL)
  @available(iOS 13.0, *)
  optional func pdfViewParentViewController() -> UIViewController
  @available(iOS 11.0, *)
  optional func pdfViewPerformFind(_ sender: PDFView)
  @available(iOS 11.0, *)
  optional func pdfViewPerformGo(toPage sender: PDFView)
  @available(iOS 11.0, *)
  optional func pdfViewOpenPDF(_ sender: PDFView, forRemoteGoToAction action: PDFActionRemoteGoTo)
}
