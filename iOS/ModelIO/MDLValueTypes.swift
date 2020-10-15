
@available(iOS 11.0, *)
class MDLMatrix4x4Array : NSObject, NSCopying {
  var elementCount: Int { get }
  var precision: MDLDataPrecision { get }
  func clear()
  init(elementCount arrayElementCount: Int)
  func __setFloat4x4(_ valuesArray: UnsafePointer<matrix_float4x4>, count: Int)
  func __setDouble4x4(_ valuesArray: UnsafePointer<matrix_double4x4>, count: Int)
  func __getFloat4x4Array(_ valuesArray: UnsafeMutablePointer<matrix_float4x4>, maxCount: Int) -> Int
  func __getDouble4x4Array(_ valuesArray: UnsafeMutablePointer<matrix_double4x4>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLMatrix4x4Array {
  @nonobjc var float4x4Array: [float4x4]
  @nonobjc var double4x4Array: [double4x4]
}
