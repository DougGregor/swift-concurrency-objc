
class NSValue : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.13, *)
  func getValue(_ value: UnsafeMutableRawPointer, size: Int)
  var objCType: UnsafePointer<CChar> { get }
  init(bytes value: UnsafeRawPointer, objCType type: UnsafePointer<CChar>)
}

extension NSValue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func value<StoredType>(of type: StoredType.Type) -> StoredType?
}
extension NSValue {
  /*not inherited*/ init(_ value: UnsafeRawPointer, withObjCType type: UnsafePointer<CChar>)
}
extension NSValue {
  /*not inherited*/ init(nonretainedObject anObject: Any?)
  var nonretainedObjectValue: Any? { get }
  /*not inherited*/ init(pointer: UnsafeRawPointer?)
  var pointerValue: UnsafeMutableRawPointer? { get }
  func isEqual(to value: NSValue) -> Bool
}
class NSNumber : NSValue {
  init(value: CChar)
  init(value: UInt8)
  init(value: Int16)
  init(value: UInt16)
  init(value: Int32)
  init(value: UInt32)
  init(value: Int64)
  init(value: UInt64)
  init(value: Float)
  init(value: Double)
  init(value: Bool)
  @available(macOS 10.5, *)
  init(value: Int)
  @available(macOS 10.5, *)
  init(value: UInt)
  var int8Value: CChar { get }
  var uint8Value: UInt8 { get }
  var int16Value: Int16 { get }
  var uint16Value: UInt16 { get }
  var int32Value: Int32 { get }
  var uint32Value: UInt32 { get }
  var int64Value: Int64 { get }
  var uint64Value: UInt64 { get }
  var floatValue: Float { get }
  var doubleValue: Double { get }
  var boolValue: Bool { get }
  @available(macOS 10.5, *)
  var intValue: Int { get }
  @available(macOS 10.5, *)
  var uintValue: UInt { get }
  var stringValue: String { get }
  func compare(_ otherNumber: NSNumber) -> ComparisonResult
  func isEqual(to number: NSNumber) -> Bool
  func description(withLocale locale: Any?) -> String
}

extension NSNumber : ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral, ExpressibleByBooleanLiteral {
}

extension NSNumber : _HasCustomAnyHashableRepresentation {
}
extension NSNumber {
}
extension NSValue {
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func getValue(_ value: UnsafeMutableRawPointer)
}
