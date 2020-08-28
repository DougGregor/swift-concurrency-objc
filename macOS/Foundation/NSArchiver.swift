
@available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use NSKeyedArchiver instead")
class NSArchiver : NSCoder {
  init(forWritingWith mdata: NSMutableData)
  var archiverData: NSMutableData { get }
  class func archivedData(withRootObject rootObject: Any) -> Data
  class func archiveRootObject(_ rootObject: Any, toFile path: String) -> Bool
  func encodeClassName(_ trueName: String, intoClassName inArchiveName: String)
  func classNameEncoded(forTrueClassName trueName: String) -> String?
  func replace(_ object: Any, with newObject: Any)
}
@available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use NSKeyedUnarchiver instead")
class NSUnarchiver : NSCoder {
  init?(forReadingWith data: Data)
  var isAtEnd: Bool { get }
  class func unarchiveObject(with data: Data) -> Any?
  class func unarchiveObject(withFile path: String) -> Any?
  class func decodeClassName(_ inArchiveName: String, asClassName trueName: String)
  func decodeClassName(_ inArchiveName: String, asClassName trueName: String)
  class func classNameDecoded(forArchiveClassName inArchiveName: String) -> String
  func classNameDecoded(forArchiveClassName inArchiveName: String) -> String
  func replace(_ object: Any, with newObject: Any)
}
extension NSObject {
  var classForArchiver: AnyClass? { get }
  @available(macOS, introduced: 10.0, deprecated: 10.13)
  class func replacementObject(for archiver: NSArchiver) -> Any?
  @available(macOS, introduced: 10.0, deprecated: 10.13)
  func replacementObject(for archiver: NSArchiver) -> Any?
  class func classForArchiver() -> AnyClass?
}
