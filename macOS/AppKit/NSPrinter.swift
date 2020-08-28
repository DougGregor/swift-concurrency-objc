
extension NSPrinter {
  enum TableStatus : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case ok
    case notFound
    case error
  }
  struct TypeName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct PaperName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
class NSPrinter : NSObject, NSCopying, NSCoding {
  class var printerNames: [String] { get }
  class var printerTypes: [NSPrinter.TypeName] { get }
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(type: NSPrinter.TypeName)
  var name: String { get }
  var type: NSPrinter.TypeName { get }
  var languageLevel: Int { get }
  func pageSize(forPaper paperName: NSPrinter.PaperName) -> NSSize
  var deviceDescription: [NSDeviceDescriptionKey : Any] { get }
}
extension NSPrinter {
}
