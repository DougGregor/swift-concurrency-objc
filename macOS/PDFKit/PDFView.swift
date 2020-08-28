
@available(macOS 10.4, *)
enum PDFDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case singlePage
  case singlePageContinuous
  case twoUp
  case twoUpContinuous
}
@available(macOS 10.13, *)
enum PDFDisplayDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vertical
  case horizontal
}
@available(macOS 10.4, *)
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
@available(macOS 10.7, *)
enum PDFInterpolationQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case low
  case high
}
extension NSNotification.Name {
  @available(macOS 10.4, *)
  static let PDFViewDocumentChanged: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewChangedHistory: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewPageChanged: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewScaleChanged: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewAnnotationHit: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewCopyPermission: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewPrintPermission: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewAnnotationWillHit: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewSelectionChanged: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewDisplayModeChanged: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewDisplayBoxChanged: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFViewVisiblePagesChanged: NSNotification.Name
}
@available(macOS 10.4, *)
class PDFView : NSView, NSAnimationDelegate, NSMenuDelegate {
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
  func go(to rect: NSRect, on page: PDFPage)
  var displayMode: PDFDisplayMode
  @available(macOS 10.13, *)
  var displayDirection: PDFDisplayDirection
  var displaysPageBreaks: Bool
  @available(macOS 10.13, *)
  var pageBreakMargins: NSEdgeInsets
  var displayBox: PDFDisplayBox
  var displaysAsBook: Bool
  @available(macOS 10.13, *)
  var displaysRTL: Bool
  var backgroundColor: NSColor
  @available(macOS 10.7, *)
  var interpolationQuality: PDFInterpolationQuality
  @available(macOS 10.14, *)
  var pageShadowsEnabled: Bool
  weak var delegate: @sil_weak PDFViewDelegate?
  var scaleFactor: CGFloat
  @available(macOS 10.13, *)
  var minScaleFactor: CGFloat
  @available(macOS 10.13, *)
  var maxScaleFactor: CGFloat
  var autoScales: Bool
  @available(macOS 10.13, *)
  var scaleFactorForSizeToFit: CGFloat { get }
  @IBAction func zoomIn(_ sender: Any?)
  var canZoomIn: Bool { get }
  @IBAction func zoomOut(_ sender: Any?)
  var canZoomOut: Bool { get }
  func areaOfInterest(forMouse event: NSEvent) -> PDFAreaOfInterest
  func areaOfInterest(for cursorLocation: NSPoint) -> PDFAreaOfInterest
  func setCursorFor(_ area: PDFAreaOfInterest)
  @available(macOS 10.5, *)
  func perform(_ action: PDFAction)
  var currentSelection: PDFSelection?
  @available(macOS 10.5, *)
  func setCurrentSelection(_ selection: PDFSelection?, animate: Bool)
  func clearSelection()
  @IBAction func scrollSelectionToVisible(_ sender: Any?)
  @available(macOS 10.5, *)
  var highlightedSelections: [PDFSelection]?
  @available(macOS 10.12, *)
  func draw(_ page: PDFPage, to context: CGContext)
  @available(macOS 10.12, *)
  func drawPagePost(_ page: PDFPage, to context: CGContext)
  @IBAction func copy(_ sender: Any?)
  func print(with printInfo: NSPrintInfo, autoRotate doRotate: Bool)
  @available(macOS 10.5, *)
  func print(with printInfo: NSPrintInfo, autoRotate doRotate: Bool, pageScaling scale: PDFPrintScalingMode)
  func page(for point: NSPoint, nearest: Bool) -> PDFPage?
  func convert(_ point: NSPoint, to page: PDFPage) -> NSPoint
  func convert(_ rect: NSRect, to page: PDFPage) -> NSRect
  func convert(_ point: NSPoint, from page: PDFPage) -> NSPoint
  func convert(_ rect: NSRect, from page: PDFPage) -> NSRect
  var documentView: NSView? { get }
  func layoutDocumentView()
  @available(macOS 10.5, *)
  func annotationsChanged(on page: PDFPage)
  func rowSize(for page: PDFPage) -> NSSize
  @available(macOS 10.13, *)
  var acceptsDraggedFiles: Bool
  @available(macOS 10.5, *)
  var visiblePages: [PDFPage] { get }
  @available(macOS 10.6, *)
  var enableDataDetectors: Bool
}
protocol PDFViewDelegate : NSObjectProtocol {
  @available(macOS 10.5, *)
  optional func pdfViewWillClick(onLink sender: PDFView, with url: URL)
  @available(macOS 10.5, *)
  optional func pdfViewWillChangeScaleFactor(_ sender: PDFView, toScale scaler: CGFloat) -> CGFloat
  @available(macOS 10.5, *)
  optional func pdfViewPrintJobTitle(_ sender: PDFView) -> String
  @available(macOS 10.5, *)
  optional func pdfViewPerformPrint(_ sender: PDFView)
  @available(macOS 10.5, *)
  optional func pdfViewPerformFind(_ sender: PDFView)
  @available(macOS 10.5, *)
  optional func pdfViewPerformGo(toPage sender: PDFView)
  @available(macOS 10.5, *)
  optional func pdfViewOpenPDF(_ sender: PDFView, forRemoteGoToAction action: PDFActionRemoteGoTo)
}
extension PDFView {
  @available(macOS, introduced: 10.4, deprecated: 10.12)
  @IBAction func takePasswordFrom(_ sender: Any)
  @available(macOS, introduced: 10.4, deprecated: 10.12)
  func draw(_ page: PDFPage)
  @available(macOS, introduced: 10.5, deprecated: 10.12)
  func drawPagePost(_ page: PDFPage)
  @available(macOS, introduced: 10.4, deprecated: 10.12)
  var shouldAntiAlias: Bool
  @available(macOS, introduced: 10.4, deprecated: 10.12)
  var greekingThreshold: CGFloat
  @available(macOS, introduced: 10.4, deprecated: 10.12)
  @IBAction func takeBackgroundColorFrom(_ sender: Any)
  @available(macOS, introduced: 10.4, deprecated: 10.13)
  var allowsDragging: Bool
}
