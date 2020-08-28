
@available(watchOS 4.0, *)
enum MLMultiArrayDataType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case double
  @available(watchOS 7.0, *)
  static var float64: MLMultiArrayDataType { get }
  case float32
  @available(watchOS 7.0, *)
  static var float: MLMultiArrayDataType { get }
  case int32
}
@available(watchOS 4.0, *)
class MLMultiArray : NSObject, NSSecureCoding {
  var dataPointer: UnsafeMutableRawPointer { get }
  var dataType: MLMultiArrayDataType { get }
  var shape: [NSNumber] { get }
  var strides: [NSNumber] { get }
  var count: Int { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension MLMultiArray {
  @inlinable convenience init<C>(_ data: C) throws where C : Collection, C.Element : FixedWidthInteger
  @inlinable convenience init<C>(_ data: C) throws where C : Collection, C.Element == Float
  @inlinable convenience init<C>(_ data: C) throws where C : Collection, C.Element == Double
}
extension MLMultiArray {
  init(shape: [NSNumber], dataType: MLMultiArrayDataType) throws
  init(dataPointer: UnsafeMutableRawPointer, shape: [NSNumber], dataType: MLMultiArrayDataType, strides: [NSNumber], deallocator: ((UnsafeMutableRawPointer) -> Void)? = nil) throws
}
extension MLMultiArray {
  @available(watchOS 7.0, *)
  convenience init(concatenating multiArrays: [MLMultiArray], axis: Int, dataType: MLMultiArrayDataType)
}
extension MLMultiArray {
  subscript(idx: Int) -> NSNumber
  subscript(key: [NSNumber]) -> NSNumber
}
