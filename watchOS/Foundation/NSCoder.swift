
extension NSCoder {
  @available(watchOS 2.0, *)
  enum DecodingFailurePolicy : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case raiseException
    case setErrorAndReturn
  }
}
class NSCoder : NSObject {
  func encodeValue(ofObjCType type: UnsafePointer<CChar>, at addr: UnsafeRawPointer)
  func encode(_ data: Data)
  func decodeData() -> Data?
  @available(watchOS 4.0, *)
  func decodeValue(ofObjCType type: UnsafePointer<CChar>, at data: UnsafeMutableRawPointer, size: Int)
  func version(forClassName className: String) -> Int
}

extension NSCoder {
  func decodeObject<DecodedObjectType>(of cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType? where DecodedObjectType : NSObject, DecodedObjectType : NSCoding
  @nonobjc func decodeObject(of classes: [AnyClass]?, forKey key: String) -> Any?
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeTopLevelObject() throws -> Any?
  @available(swift 4)
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeTopLevelObject(forKey key: String) throws -> Any?
  @available(macOS 10.11, iOS 9.0, *)
  func decodeTopLevelObject<DecodedObjectType>(of cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType? where DecodedObjectType : NSObject, DecodedObjectType : NSCoding
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeTopLevelObject(of classes: [AnyClass]?, forKey key: String) throws -> Any?
}
extension NSCoder {
  func encode(_ object: Any?)
  func encodeRootObject(_ rootObject: Any)
  func encodeBycopyObject(_ anObject: Any?)
  func encodeByrefObject(_ anObject: Any?)
  func encodeConditionalObject(_ object: Any?)
  func encodeArray(ofObjCType type: UnsafePointer<CChar>, count: Int, at array: UnsafeRawPointer)
  func encodeBytes(_ byteaddr: UnsafeRawPointer?, length: Int)
  func decodeObject() -> Any?
  func decodeArray(ofObjCType itemType: UnsafePointer<CChar>, count: Int, at array: UnsafeMutableRawPointer)
  func decodeBytes(withReturnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutableRawPointer?
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encode(_ object: Any?, forKey key: String)
  func encodeConditionalObject(_ object: Any?, forKey key: String)
  func encode(_ value: Bool, forKey key: String)
  func encodeCInt(_ value: Int32, forKey key: String)
  func encode(_ value: Int32, forKey key: String)
  func encode(_ value: Int64, forKey key: String)
  func encode(_ value: Float, forKey key: String)
  func encode(_ value: Double, forKey key: String)
  func encodeBytes(_ bytes: UnsafePointer<UInt8>?, length: Int, forKey key: String)
  func containsValue(forKey key: String) -> Bool
  func decodeObject(forKey key: String) -> Any?
  func decodeBool(forKey key: String) -> Bool
  func decodeCInt(forKey key: String) -> Int32
  func decodeInt32(forKey key: String) -> Int32
  func decodeInt64(forKey key: String) -> Int64
  func decodeFloat(forKey key: String) -> Float
  func decodeDouble(forKey key: String) -> Double
  func decodeBytes(forKey key: String, returnedLength lengthp: UnsafeMutablePointer<Int>?) -> UnsafePointer<UInt8>?
  @available(watchOS 2.0, *)
  func encode(_ value: Int, forKey key: String)
  @available(watchOS 2.0, *)
  func decodeInteger(forKey key: String) -> Int
  @available(watchOS 2.0, *)
  var requiresSecureCoding: Bool { get }
  @available(watchOS 7.0, *)
  func __decodeArrayOfObjects(of cls: AnyClass, forKey key: String) -> [Any]?
  @available(watchOS 7.0, *)
  func __decodeDictionary(withKeysOf keyCls: AnyClass, objectsOf objectCls: AnyClass, forKey key: String) -> [AnyHashable : Any]?
  @available(watchOS 2.0, *)
  func __decodeObject(ofClasses classes: Set<AnyHashable>?, forKey key: String) -> Any?
  @available(watchOS 7.0, *)
  func __decodeArrayOfObjects(ofClasses classes: Set<AnyHashable>, forKey key: String) -> [Any]?
  @available(watchOS 7.0, *)
  func __decodeDictionary(withKeysOfClasses keyClasses: Set<AnyHashable>, objectsOfClasses objectClasses: Set<AnyHashable>, forKey key: String) -> [AnyHashable : Any]?
  @available(watchOS 2.0, *)
  func decodePropertyList(forKey key: String) -> Any?
  @available(watchOS 2.0, *)
  var allowedClasses: Set<AnyHashable>? { get }
  @available(watchOS 2.0, *)
  func failWithError(_ error: Error)
  @available(watchOS 2.0, *)
  var decodingFailurePolicy: NSCoder.DecodingFailurePolicy { get }
  @available(watchOS 2.0, *)
  var error: Error? { get }
}
extension NSCoder {
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func decodeValue(ofObjCType type: UnsafePointer<CChar>, at data: UnsafeMutableRawPointer)
}
