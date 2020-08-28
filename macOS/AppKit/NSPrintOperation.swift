
extension NSPrintOperation {
  enum PageOrder : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case descendingPageOrder
    case specialPageOrder
    case ascendingPageOrder
    case unknownPageOrder
  }
  @available(macOS 10.7, *)
  enum RenderingQuality : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case best
    case responsive
  }
}
extension NSExceptionName {
  static let printOperationExistsException: NSExceptionName
}
class NSPrintOperation : NSObject {
  /*not inherited*/ init(view: NSView, printInfo: NSPrintInfo)
  class func pdfOperation(with view: NSView, inside rect: NSRect, to data: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func pdfOperation(with view: NSView, inside rect: NSRect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  class func epsOperation(with view: NSView, inside rect: NSRect, to data: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func epsOperation(with view: NSView, inside rect: NSRect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  /*not inherited*/ init(view: NSView)
  class func pdfOperation(with view: NSView, inside rect: NSRect, to data: NSMutableData) -> NSPrintOperation
  class func epsOperation(with view: NSView, inside rect: NSRect, to data: NSMutableData?) -> NSPrintOperation
  class var current: NSPrintOperation?
  var isCopyingOperation: Bool { get }
  @available(macOS 10.7, *)
  var preferredRenderingQuality: NSPrintOperation.RenderingQuality { get }
  @available(macOS 10.5, *)
  var jobTitle: String?
  var showsPrintPanel: Bool
  var showsProgressPanel: Bool
  var printPanel: NSPrintPanel
  @available(macOS 10.9, *)
  var pdfPanel: NSPDFPanel
  var canSpawnSeparateThread: Bool
  var pageOrder: NSPrintOperation.PageOrder
  func runModal(for docWindow: NSWindow, delegate: Any?, didRun didRunSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func run() -> Bool
  var view: NSView? { get }
  @NSCopying var printInfo: NSPrintInfo
  var context: NSGraphicsContext? { get }
  @available(macOS 10.5, *)
  var pageRange: NSRange { get }
  var currentPage: Int { get }
  func createContext() -> NSGraphicsContext?
  func destroyContext()
  func deliverResult() -> Bool
  func cleanUp()
}
extension NSPrintOperation {
}
