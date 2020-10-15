
@available(macOS 10.4, *)
enum PDFPrintScalingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case pageScaleNone
  case pageScaleToFit
  case pageScaleDownToFit
}
@available(macOS 10.4, *)
enum PDFDocumentPermissions : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case user
  case owner
}
extension NSNotification.Name {
  @available(macOS 10.4, *)
  static let PDFDocumentDidUnlock: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidBeginFind: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidEndFind: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidBeginPageFind: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidEndPageFind: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidFindMatch: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidBeginWrite: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidEndWrite: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidBeginPageWrite: NSNotification.Name
  @available(macOS 10.4, *)
  static let PDFDocumentDidEndPageWrite: NSNotification.Name
}
struct PDFDocumentAttribute : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFDocumentAttribute {
  @available(macOS 10.4, *)
  static let titleAttribute: PDFDocumentAttribute
  @available(macOS 10.4, *)
  static let authorAttribute: PDFDocumentAttribute
  @available(macOS 10.4, *)
  static let subjectAttribute: PDFDocumentAttribute
  @available(macOS 10.4, *)
  static let creatorAttribute: PDFDocumentAttribute
  @available(macOS 10.4, *)
  static let producerAttribute: PDFDocumentAttribute
  @available(macOS 10.4, *)
  static let creationDateAttribute: PDFDocumentAttribute
  @available(macOS 10.4, *)
  static let modificationDateAttribute: PDFDocumentAttribute
  @available(macOS 10.4, *)
  static let keywordsAttribute: PDFDocumentAttribute
}
struct PDFDocumentWriteOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFDocumentWriteOption {
  @available(macOS 10.4, *)
  static let ownerPasswordOption: PDFDocumentWriteOption
  @available(macOS 10.4, *)
  static let userPasswordOption: PDFDocumentWriteOption
}
@available(macOS 10.4, *)
class PDFDocument : NSObject, NSCopying {
  init?(url: URL)
  init?(data: Data)
  var documentURL: URL? { get }
  var documentRef: CGPDFDocument? { get }
  var documentAttributes: [AnyHashable : Any]?
  var majorVersion: Int { get }
  var minorVersion: Int { get }
  var isEncrypted: Bool { get }
  var isLocked: Bool { get }
  func unlock(withPassword password: String) -> Bool
  @available(macOS 10.4, *)
  var allowsPrinting: Bool { get }
  @available(macOS 10.4, *)
  var allowsCopying: Bool { get }
  @available(macOS 10.13, *)
  var allowsDocumentChanges: Bool { get }
  @available(macOS 10.13, *)
  var allowsDocumentAssembly: Bool { get }
  @available(macOS 10.13, *)
  var allowsContentAccessibility: Bool { get }
  @available(macOS 10.13, *)
  var allowsCommenting: Bool { get }
  @available(macOS 10.13, *)
  var allowsFormFieldEntry: Bool { get }
  @available(macOS 10.6, *)
  var permissionsStatus: PDFDocumentPermissions { get }
  var string: String? { get }
  weak var delegate: @sil_weak PDFDocumentDelegate?
  func dataRepresentation() -> Data?
  @available(macOS 10.6, *)
  func dataRepresentation(options: [AnyHashable : Any] = [:]) -> Data?
  func write(toFile path: String) -> Bool
  func write(toFile path: String, withOptions options: [PDFDocumentWriteOption : Any]? = nil) -> Bool
  func write(to url: URL) -> Bool
  func write(to url: URL, withOptions options: [PDFDocumentWriteOption : Any]? = nil) -> Bool
  @available(macOS 10.6, *)
  var outlineRoot: PDFOutline?
  func outlineItem(for selection: PDFSelection) -> PDFOutline?
  var pageCount: Int { get }
  func page(at index: Int) -> PDFPage?
  func index(for page: PDFPage) -> Int
  func insert(_ page: PDFPage, at index: Int)
  func removePage(at index: Int)
  func exchangePage(at indexA: Int, withPageAt indexB: Int)
  var pageClass: AnyClass { get }
  func findString(_ string: String, withOptions options: NSString.CompareOptions = []) -> [PDFSelection]
  func beginFindString(_ string: String, withOptions options: NSString.CompareOptions = [])
  @available(macOS 10.5, *)
  func beginFindStrings(_ strings: [String], withOptions options: NSString.CompareOptions = [])
  func findString(_ string: String, fromSelection selection: PDFSelection?, withOptions options: NSString.CompareOptions = []) -> PDFSelection?
  var isFinding: Bool { get }
  func cancelFindString()
  @available(macOS 10.7, *)
  func printOperation(for printInfo: NSPrintInfo?, scalingMode scaleMode: PDFPrintScalingMode, autoRotate doRotate: Bool) -> NSPrintOperation?
  var selectionForEntireDocument: PDFSelection? { get }
  func selection(from startPage: PDFPage, at startPoint: NSPoint, to endPage: PDFPage, at endPoint: NSPoint) -> PDFSelection?
  func selection(from startPage: PDFPage, atCharacterIndex startCharacter: Int, to endPage: PDFPage, atCharacterIndex endCharacter: Int) -> PDFSelection?
}
protocol PDFDocumentDelegate : NSObjectProtocol {
  @asyncHandler optional func documentDidUnlock(_ notification: Notification)
  @asyncHandler optional func documentDidBeginDocumentFind(_ notification: Notification)
  @asyncHandler optional func documentDidEndDocumentFind(_ notification: Notification)
  @asyncHandler optional func documentDidBeginPageFind(_ notification: Notification)
  @asyncHandler optional func documentDidEndPageFind(_ notification: Notification)
  @asyncHandler optional func documentDidFindMatch(_ notification: Notification)
  @available(macOS 10.4, *)
  @asyncHandler optional func didMatchString(_ instance: PDFSelection)
  @available(macOS 10.6, *)
  optional func classForPage() -> AnyClass
  @available(macOS 10.13, *)
  optional func `class`(forAnnotationType annotationType: String) -> AnyClass
  @available(macOS, introduced: 10.6, deprecated: 10.12)
  optional func `class`(forAnnotationClass annotationClass: AnyClass) -> AnyClass
}
