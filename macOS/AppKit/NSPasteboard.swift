
extension NSPasteboard {
  struct PasteboardType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.12, *)
  struct ContentsOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var currentHostOnly: NSPasteboard.ContentsOptions { get }
  }
  struct ReadingOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.6, *)
  struct WritingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var promised: NSPasteboard.WritingOptions { get }
  }
  @available(macOS 10.6, *)
  struct ReadingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var asData: NSPasteboard.ReadingOptions { get }
    static var asString: NSPasteboard.ReadingOptions { get }
    static var asPropertyList: NSPasteboard.ReadingOptions { get }
    static var asKeyedArchive: NSPasteboard.ReadingOptions { get }
  }
}
extension NSPasteboard.PasteboardType {
  @available(macOS 10.6, *)
  static let string: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let pdf: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let tiff: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let png: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let rtf: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let rtfd: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let html: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let tabularText: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let font: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let ruler: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let color: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let sound: NSPasteboard.PasteboardType
  @available(macOS 10.6, *)
  static let multipleTextSelection: NSPasteboard.PasteboardType
  @available(macOS 10.7, *)
  static let textFinderOptions: NSPasteboard.PasteboardType
  @available(macOS 10.13, *)
  static let URL: NSPasteboard.PasteboardType
  @available(macOS 10.13, *)
  static let fileURL: NSPasteboard.PasteboardType
  static let fileContents: NSPasteboard.PasteboardType
  static func fileNameType(forPathExtension fileType: String) -> NSPasteboard.PasteboardType!
  static func fileContentsType(forPathExtension fileType: String) -> NSPasteboard.PasteboardType!
  var representedPathExtension: String? { get }
  static func representedPathExtensions(from pboardTypes: [NSPasteboard.PasteboardType]) -> [String]?
  @available(macOS, introduced: 10.0, deprecated: 10.14)
  static let postScript: NSPasteboard.PasteboardType
  @available(macOS, introduced: 10.0, deprecated: 10.14, renamed: "kUTTypeVCard")
  static let vCard: NSPasteboard.PasteboardType
  @available(macOS, introduced: 10.0, deprecated: 10.14, renamed: "kUTTypeInkText")
  static let inkText: NSPasteboard.PasteboardType
  @available(macOS, introduced: 10.0, deprecated: 10.14)
  static let filePromise: NSPasteboard.PasteboardType
}
extension NSPasteboard.Name {
  @available(macOS 10.13, *)
  static let general: NSPasteboard.Name
  @available(macOS 10.13, *)
  static let font: NSPasteboard.Name
  @available(macOS 10.13, *)
  static let ruler: NSPasteboard.Name
  @available(macOS 10.13, *)
  static let find: NSPasteboard.Name
  @available(macOS 10.13, *)
  static let drag: NSPasteboard.Name
  @available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSPasteboard.Name.general")
  static let generalPboard: NSPasteboard.Name
  @available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSPasteboard.Name.font")
  static let fontPboard: NSPasteboard.Name
  @available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSPasteboard.Name.ruler")
  static let rulerPboard: NSPasteboard.Name
  @available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSPasteboard.Name.find")
  static let findPboard: NSPasteboard.Name
  @available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSPasteboard.Name.drag")
  static let dragPboard: NSPasteboard.Name
}
extension NSPasteboard.ReadingOptionKey {
  @available(macOS 10.6, *)
  static let urlReadingFileURLsOnly: NSPasteboard.ReadingOptionKey
  @available(macOS 10.6, *)
  static let urlReadingContentsConformToTypes: NSPasteboard.ReadingOptionKey
}
class NSPasteboard : NSObject {
  class var general: NSPasteboard { get }
  /*not inherited*/ init(name: NSPasteboard.Name)
  class func withUniqueName() -> NSPasteboard
  var name: NSPasteboard.Name { get }
  var changeCount: Int { get }
  func releaseGlobally()
  @available(macOS 10.12, *)
  func prepareForNewContents(with options: NSPasteboard.ContentsOptions = []) -> Int
  @available(macOS 10.6, *)
  func clearContents() -> Int
  @available(macOS 10.6, *)
  func writeObjects(_ objects: [NSPasteboardWriting]) -> Bool
  @available(macOS 10.6, *)
  func readObjects(forClasses classArray: [AnyClass], options: [NSPasteboard.ReadingOptionKey : Any]? = nil) -> [Any]?
  @available(macOS 10.6, *)
  var pasteboardItems: [NSPasteboardItem]? { get }
  @available(macOS 10.6, *)
  func index(of pasteboardItem: NSPasteboardItem) -> Int
  @available(macOS 10.6, *)
  func canReadItem(withDataConformingToTypes types: [String]) -> Bool
  @available(macOS 10.6, *)
  func canReadObject(forClasses classArray: [AnyClass], options: [NSPasteboard.ReadingOptionKey : Any]? = nil) -> Bool
  func declareTypes(_ newTypes: [NSPasteboard.PasteboardType], owner newOwner: Any?) -> Int
  func addTypes(_ newTypes: [NSPasteboard.PasteboardType], owner newOwner: Any?) -> Int
  var types: [NSPasteboard.PasteboardType]? { get }
  func availableType(from types: [NSPasteboard.PasteboardType]) -> NSPasteboard.PasteboardType?
  func setData(_ data: Data?, forType dataType: NSPasteboard.PasteboardType) -> Bool
  func setPropertyList(_ plist: Any, forType dataType: NSPasteboard.PasteboardType) -> Bool
  func setString(_ string: String, forType dataType: NSPasteboard.PasteboardType) -> Bool
  func data(forType dataType: NSPasteboard.PasteboardType) -> Data?
  func propertyList(forType dataType: NSPasteboard.PasteboardType) -> Any?
  func string(forType dataType: NSPasteboard.PasteboardType) -> String?
}
extension NSPasteboard {
  class func types(filterableTo type: NSPasteboard.PasteboardType) -> [NSPasteboard.PasteboardType]
  /*not inherited*/ init(byFilteringFile filename: String)
  /*not inherited*/ init(byFilteringData data: Data, ofType type: NSPasteboard.PasteboardType)
  /*not inherited*/ init(byFilteringTypesIn pboard: NSPasteboard)
}
protocol NSPasteboardTypeOwner : NSObjectProtocol {
  func pasteboard(_ sender: NSPasteboard, provideDataForType type: NSPasteboard.PasteboardType)
  optional func pasteboardChangedOwner(_ sender: NSPasteboard)
}
protocol NSPasteboardWriting : NSObjectProtocol {
  func writableTypes(for pasteboard: NSPasteboard) -> [NSPasteboard.PasteboardType]
  @available(macOS 10.6, *)
  optional func writingOptions(forType type: NSPasteboard.PasteboardType, pasteboard: NSPasteboard) -> NSPasteboard.WritingOptions
  func pasteboardPropertyList(forType type: NSPasteboard.PasteboardType) -> Any?
}
protocol NSPasteboardReading : NSObjectProtocol {
  static func readableTypes(for pasteboard: NSPasteboard) -> [NSPasteboard.PasteboardType]
  @available(macOS 10.6, *)
  optional static func readingOptions(forType type: NSPasteboard.PasteboardType, pasteboard: NSPasteboard) -> NSPasteboard.ReadingOptions
  init?(pasteboardPropertyList propertyList: Any, ofType type: NSPasteboard.PasteboardType)
}
extension NSURL : NSPasteboardWriting, NSPasteboardReading {
  /*not inherited*/ init?(from pasteBoard: NSPasteboard)
  func write(to pasteBoard: NSPasteboard)
}
extension NSString : NSPasteboardWriting, NSPasteboardReading {
}
extension NSPasteboard {
  func writeFileContents(_ filename: String) -> Bool
  func readFileContentsType(_ type: NSPasteboard.PasteboardType?, toFile filename: String) -> String?
  func write(_ wrapper: FileWrapper) -> Bool
  func readFileWrapper() -> FileWrapper?
}
