
extension NSPrintInfo.AttributeKey {
  static let paperName: NSPrintInfo.AttributeKey
  static let paperSize: NSPrintInfo.AttributeKey
  static let orientation: NSPrintInfo.AttributeKey
  static let scalingFactor: NSPrintInfo.AttributeKey
  static let leftMargin: NSPrintInfo.AttributeKey
  static let rightMargin: NSPrintInfo.AttributeKey
  static let topMargin: NSPrintInfo.AttributeKey
  static let bottomMargin: NSPrintInfo.AttributeKey
  static let horizontallyCentered: NSPrintInfo.AttributeKey
  static let verticallyCentered: NSPrintInfo.AttributeKey
  static let horizontalPagination: NSPrintInfo.AttributeKey
  static let verticalPagination: NSPrintInfo.AttributeKey
  static let printer: NSPrintInfo.AttributeKey
  static let copies: NSPrintInfo.AttributeKey
  static let allPages: NSPrintInfo.AttributeKey
  static let firstPage: NSPrintInfo.AttributeKey
  static let lastPage: NSPrintInfo.AttributeKey
  static let mustCollate: NSPrintInfo.AttributeKey
  static let reversePageOrder: NSPrintInfo.AttributeKey
  static let jobDisposition: NSPrintInfo.AttributeKey
  static let pagesAcross: NSPrintInfo.AttributeKey
  static let pagesDown: NSPrintInfo.AttributeKey
  static let time: NSPrintInfo.AttributeKey
  static let detailedErrorReporting: NSPrintInfo.AttributeKey
  static let faxNumber: NSPrintInfo.AttributeKey
  static let printerName: NSPrintInfo.AttributeKey
  @available(macOS 10.6, *)
  static let selectionOnly: NSPrintInfo.AttributeKey
  @available(macOS 10.6, *)
  static let jobSavingURL: NSPrintInfo.AttributeKey
  @available(macOS 10.6, *)
  static let jobSavingFileNameExtensionHidden: NSPrintInfo.AttributeKey
  static let headerAndFooter: NSPrintInfo.AttributeKey
}
extension NSPrintInfo.JobDisposition {
  static let spool: NSPrintInfo.JobDisposition
  static let preview: NSPrintInfo.JobDisposition
  static let save: NSPrintInfo.JobDisposition
  static let cancel: NSPrintInfo.JobDisposition
}
class NSPrintInfo : NSObject, NSCopying, NSCoding {
  class var shared: NSPrintInfo
  init(dictionary attributes: [NSPrintInfo.AttributeKey : Any])
  func dictionary() -> NSMutableDictionary
  var paperName: NSPrinter.PaperName?
  var paperSize: NSSize
  var orientation: NSPrintInfo.PaperOrientation
  @available(macOS 10.6, *)
  var scalingFactor: CGFloat
  var leftMargin: CGFloat
  var rightMargin: CGFloat
  var topMargin: CGFloat
  var bottomMargin: CGFloat
  var isHorizontallyCentered: Bool
  var isVerticallyCentered: Bool
  var horizontalPagination: NSPrintInfo.PaginationMode
  var verticalPagination: NSPrintInfo.PaginationMode
  var jobDisposition: NSPrintInfo.JobDisposition
  @NSCopying var printer: NSPrinter
  func setUpPrintOperationDefaultValues()
  var imageablePageBounds: NSRect { get }
  var localizedPaperName: String? { get }
  class var defaultPrinter: NSPrinter? { get }
  @available(macOS 10.5, *)
  var printSettings: NSMutableDictionary { get }
  @available(macOS 10.5, *)
  func pmPrintSession() -> UnsafeMutableRawPointer
  @available(macOS 10.5, *)
  func pmPageFormat() -> UnsafeMutableRawPointer
  @available(macOS 10.5, *)
  func pmPrintSettings() -> UnsafeMutableRawPointer
  @available(macOS 10.5, *)
  func updateFromPMPageFormat()
  @available(macOS 10.5, *)
  func updateFromPMPrintSettings()
  @available(macOS 10.6, *)
  var isSelectionOnly: Bool
  @available(macOS 10.9, *)
  func takeSettings(from inPDFInfo: NSPDFInfo)
}
extension NSPrintInfo {
}
extension NSPrintInfo {
  @available(macOS, introduced: 10.0, deprecated: 10.14, renamed: "NSPaperOrientation")
  enum Orientation : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    @available(macOS, introduced: 10.0, deprecated: 10.14, renamed: "NSPrintInfo.PaperOrientation.portrait")
    case portraitOrientation
    @available(macOS, introduced: 10.0, deprecated: 10.14, renamed: "NSPrintInfo.PaperOrientation.landscape")
    case landscapeOrientation
  }
  @available(macOS 10.9, *)
  enum PaperOrientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case portrait
    case landscape
  }
  enum PaginationMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case automatic
    case fit
    case clip
  }
  struct AttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct JobDisposition : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  typealias SettingKey = String
}
