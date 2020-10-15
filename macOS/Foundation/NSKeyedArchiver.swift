
extension NSExceptionName {
  static let invalidArchiveOperationException: NSExceptionName
  static let invalidUnarchiveOperationException: NSExceptionName
}
@available(macOS 10.9, *)
let NSKeyedArchiveRootObjectKey: String
class NSKeyedArchiver : NSCoder {
  @available(macOS 10.13, *)
  init(requiringSecureCoding requiresSecureCoding: Bool)
  @available(macOS 10.13, *)
  class func archivedData(withRootObject object: Any, requiringSecureCoding requiresSecureCoding: Bool) throws -> Data
  @available(macOS, introduced: 10.2, deprecated: 10.14, message: "Use -initRequiringSecureCoding: instead")
  init(forWritingWith data: NSMutableData)
  @available(macOS, introduced: 10.2, deprecated: 10.14, message: "Use +archivedDataWithRootObject:requiringSecureCoding:error: instead")
  class func archivedData(withRootObject rootObject: Any) -> Data
  @available(macOS, introduced: 10.2, deprecated: 10.14, message: "Use +archivedDataWithRootObject:requiringSecureCoding:error: and -writeToURL:options:error: instead")
  class func archiveRootObject(_ rootObject: Any, toFile path: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedArchiverDelegate?
  var outputFormat: PropertyListSerialization.PropertyListFormat
  @available(macOS 10.12, *)
  var encodedData: Data { get }
  func finishEncoding()
  class func setClassName(_ codedName: String?, for cls: AnyClass)
  func setClassName(_ codedName: String?, for cls: AnyClass)
  class func className(for cls: AnyClass) -> String?
  func className(for cls: AnyClass) -> String?
}

extension NSKeyedArchiver {
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func encodeEncodable<T>(_ value: T, forKey key: String) throws where T : Encodable
}
class NSKeyedUnarchiver : NSCoder {
  @available(macOS 10.13, *)
  init(forReadingFrom data: Data) throws
  @available(macOS 10.13, *)
  class func __unarchivedObject(of cls: AnyClass, from data: Data) throws -> Any
  @available(macOS 11.0, *)
  class func __unarchivedArrayOfObjects(of cls: AnyClass, from data: Data) throws -> [Any]
  @available(macOS 11.0, *)
  class func __unarchivedDictionary(withKeysOf keyCls: AnyClass, objectsOf valueCls: AnyClass, from data: Data) throws -> [AnyHashable : Any]
  @available(macOS 10.13, *)
  class func unarchivedObject(ofClasses classes: Set<AnyHashable>, from data: Data) throws -> Any
  @available(macOS 11.0, *)
  class func __unarchivedArrayOfObjects(ofClasses classes: Set<AnyHashable>, from data: Data) throws -> [Any]
  @available(macOS 11.0, *)
  class func __unarchivedDictionary(withKeysOfClasses keyClasses: Set<AnyHashable>, objectsOfClasses valueClasses: Set<AnyHashable>, from data: Data) throws -> [AnyHashable : Any]
  @available(macOS, introduced: 10.2, deprecated: 10.14, message: "Use -initForReadingFromData:error: instead")
  init(forReadingWith data: Data)
  @available(macOS, introduced: 10.2, deprecated: 10.14, message: "Use +unarchivedObjectOfClass:fromData:error: instead")
  class func unarchiveObject(with data: Data) -> Any?
  @available(macOS, introduced: 10.2, deprecated: 10.14, message: "Use +unarchivedObjectOfClass:fromData:error: instead")
  class func unarchiveObject(withFile path: String) -> Any?
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedUnarchiverDelegate?
  func finishDecoding()
  class func setClass(_ cls: AnyClass?, forClassName codedName: String)
  func setClass(_ cls: AnyClass?, forClassName codedName: String)
  class func `class`(forClassName codedName: String) -> AnyClass?
  func `class`(forClassName codedName: String) -> AnyClass?
}

extension NSKeyedUnarchiver {
  @objc(_swift_checkClassAndWarnForKeyedArchiving:operation:) class func __swift_checkClassAndWarnForKeyedArchiving(_ theClass: AnyClass, operation: CInt) -> CInt
}

extension NSKeyedUnarchiver {
  @available(swift 4)
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc class func unarchiveTopLevelObjectWithData(_ data: Data) throws -> Any?
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  @nonobjc static func unarchivedObject<DecodedObjectType>(ofClass cls: DecodedObjectType.Type, from data: Data) throws -> DecodedObjectType? where DecodedObjectType : NSObject, DecodedObjectType : NSCoding
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  @nonobjc static func unarchivedObject(ofClasses classes: [AnyClass], from data: Data) throws -> Any?
  @nonobjc static let __plistClasses: [AnyClass]
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeDecodable<T>(_ type: T.Type, forKey key: String) -> T? where T : Decodable
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeTopLevelDecodable<T>(_ type: T.Type, forKey key: String) throws -> T? where T : Decodable
}
protocol NSKeyedArchiverDelegate : NSObjectProtocol {
  optional func archiver(_ archiver: NSKeyedArchiver, willEncode object: Any) -> Any?
  optional func archiver(_ archiver: NSKeyedArchiver, didEncode object: Any?)
  optional func archiver(_ archiver: NSKeyedArchiver, willReplace object: Any?, with newObject: Any?)
  optional func archiverWillFinish(_ archiver: NSKeyedArchiver)
  optional func archiverDidFinish(_ archiver: NSKeyedArchiver)
}
protocol NSKeyedUnarchiverDelegate : NSObjectProtocol {
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, didDecode object: Any?) -> Any?
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, willReplace object: Any, with newObject: Any)
  optional func unarchiverWillFinish(_ unarchiver: NSKeyedUnarchiver)
  optional func unarchiverDidFinish(_ unarchiver: NSKeyedUnarchiver)
}
extension NSObject {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObject(for archiver: NSKeyedArchiver) -> Any?
  func replacementObject(for archiver: NSKeyedArchiver) -> Any?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension NSObject {
  class func classForKeyedUnarchiver() -> AnyClass
}
