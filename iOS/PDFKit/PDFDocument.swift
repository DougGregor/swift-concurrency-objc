
@available(iOS 11.0, *)
enum PDFDocumentPermissions : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case user
  case owner
}
extension NSNotification.Name {
  @available(iOS 11.0, *)
  static let PDFDocumentDidUnlock: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidBeginFind: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidEndFind: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidBeginPageFind: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidEndPageFind: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidFindMatch: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidBeginWrite: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidEndWrite: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidBeginPageWrite: NSNotification.Name
  @available(iOS 11.0, *)
  static let PDFDocumentDidEndPageWrite: NSNotification.Name
}
struct PDFDocumentAttribute : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFDocumentAttribute {
  @available(iOS 11.0, *)
  static let titleAttribute: PDFDocumentAttribute
  @available(iOS 11.0, *)
  static let authorAttribute: PDFDocumentAttribute
  @available(iOS 11.0, *)
  static let subjectAttribute: PDFDocumentAttribute
  @available(iOS 11.0, *)
  static let creatorAttribute: PDFDocumentAttribute
  @available(iOS 11.0, *)
  static let producerAttribute: PDFDocumentAttribute
  @available(iOS 11.0, *)
  static let creationDateAttribute: PDFDocumentAttribute
  @available(iOS 11.0, *)
  static let modificationDateAttribute: PDFDocumentAttribute
  @available(iOS 11.0, *)
  static let keywordsAttribute: PDFDocumentAttribute
}
struct PDFDocumentWriteOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFDocumentWriteOption {
  @available(iOS 11.0, *)
  static let ownerPasswordOption: PDFDocumentWriteOption
  @available(iOS 11.0, *)
  static let userPasswordOption: PDFDocumentWriteOption
}
@available(iOS 11.0, *)
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
  @available(iOS 11.0, *)
  var allowsPrinting: Bool { get }
  @available(iOS 11.0, *)
  var allowsCopying: Bool { get }
  @available(iOS 11.0, *)
  var allowsDocumentChanges: Bool { get }
  @available(iOS 11.0, *)
  var allowsDocumentAssembly: Bool { get }
  @available(iOS 11.0, *)
  var allowsContentAccessibility: Bool { get }
  @available(iOS 11.0, *)
  var allowsCommenting: Bool { get }
  @available(iOS 11.0, *)
  var allowsFormFieldEntry: Bool { get }
  @available(iOS 11.0, *)
  var permissionsStatus: PDFDocumentPermissions { get }
  var string: String? { get }
  weak var delegate: @sil_weak PDFDocumentDelegate?
  func dataRepresentation() -> Data?
  @available(iOS 11.0, *)
  func dataRepresentation(options: [AnyHashable : Any] = [:]) -> Data?
  func write(toFile path: String) -> Bool
  func write(toFile path: String, withOptions options: [PDFDocumentWriteOption : Any]? = nil) -> Bool
  func write(to url: URL) -> Bool
  func write(to url: URL, withOptions options: [PDFDocumentWriteOption : Any]? = nil) -> Bool
  @available(iOS 11.0, *)
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
  @available(iOS 11.0, *)
  func beginFindStrings(_ strings: [String], withOptions options: NSString.CompareOptions = [])
  func findString(_ string: String, fromSelection selection: PDFSelection?, withOptions options: NSString.CompareOptions = []) -> PDFSelection?
  var isFinding: Bool { get }
  func cancelFindString()
  var selectionForEntireDocument: PDFSelection? { get }
  func selection(from startPage: PDFPage, at startPoint: CGPoint, to endPage: PDFPage, at endPoint: CGPoint) -> PDFSelection?
  func selection(from startPage: PDFPage, atCharacterIndex startCharacter: Int, to endPage: PDFPage, atCharacterIndex endCharacter: Int) -> PDFSelection?
}
protocol PDFDocumentDelegate : NSObjectProtocol {
  @asyncHandler optional func documentDidUnlock(_ notification: Notification)
  @asyncHandler optional func documentDidBeginDocumentFind(_ notification: Notification)
  @asyncHandler optional func documentDidEndDocumentFind(_ notification: Notification)
  @asyncHandler optional func documentDidBeginPageFind(_ notification: Notification)
  @asyncHandler optional func documentDidEndPageFind(_ notification: Notification)
  @asyncHandler optional func documentDidFindMatch(_ notification: Notification)
  @available(iOS 11.0, *)
  @asyncHandler optional func didMatchString(_ instance: PDFSelection)
  @available(iOS 11.0, *)
  optional func classForPage() -> AnyClass
  @available(iOS 11.0, *)
  optional func `class`(forAnnotationType annotationType: String) -> AnyClass
}
