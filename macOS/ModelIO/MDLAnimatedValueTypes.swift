
enum MDLAnimatedValueInterpolation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constant
  case linear
}
@available(macOS 10.13, *)
class MDLAnimatedValue : NSObject, NSCopying {
  func isAnimated() -> Bool
  var precision: MDLDataPrecision { get }
  var timeSampleCount: Int { get }
  var minimumTime: TimeInterval { get }
  var maximumTime: TimeInterval { get }
  var interpolation: MDLAnimatedValueInterpolation
  var keyTimes: [NSNumber] { get }
  func clear()
  func __getTimes(_ timesArray: UnsafeMutablePointer<TimeInterval>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedValue {
  @nonobjc var times: [TimeInterval] { get }
}
@available(macOS 10.13, *)
class MDLAnimatedScalarArray : MDLAnimatedValue {
  var elementCount: Int { get }
  init(elementCount arrayElementCount: Int)
  func __setFloat(_ array: UnsafePointer<Float>, count: Int, atTime time: TimeInterval)
  func __setDouble(_ array: UnsafePointer<Double>, count: Int, atTime time: TimeInterval)
  func __getFloat(_ array: UnsafeMutablePointer<Float>, maxCount: Int, atTime time: TimeInterval) -> Int
  func __getDouble(_ array: UnsafeMutablePointer<Double>, maxCount: Int, atTime time: TimeInterval) -> Int
  func __reset(with valuesArray: UnsafePointer<Float>, count valuesCount: Int, atTimes timesArray: UnsafePointer<TimeInterval>, count timesCount: Int)
  func __reset(with valuesArray: UnsafePointer<Double>, count valuesCount: Int, atTimes timesArray: UnsafePointer<TimeInterval>, count timesCount: Int)
  func __getFloat(_ valuesArray: UnsafeMutablePointer<Float>, maxCount: Int) -> Int
  func __getDouble(_ valuesArray: UnsafeMutablePointer<Double>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedScalarArray {
  @nonobjc func set(floatArray array: [Float], atTime time: TimeInterval)
  @nonobjc func set(doubleArray array: [Double], atTime time: TimeInterval)
  @nonobjc func floatArray(atTime time: TimeInterval) -> [Float]
  @nonobjc func doubleArray(atTime time: TimeInterval) -> [Double]
  @nonobjc func reset(floatArray array: [Float], atTimes times: [TimeInterval])
  @nonobjc func reset(doubleArray array: [Double], atTimes times: [TimeInterval])
  @nonobjc var floatArray: [Float] { get }
  @nonobjc var doubleArray: [Double] { get }
}
@available(macOS 10.13, *)
class MDLAnimatedVector3Array : MDLAnimatedValue {
  var elementCount: Int { get }
  init(elementCount arrayElementCount: Int)
  func __setFloat3(_ array: UnsafePointer<vector_float3>, count: Int, atTime time: TimeInterval)
  func __setDouble3(_ array: UnsafePointer<vector_double3>, count: Int, atTime time: TimeInterval)
  func __getFloat3Array(_ array: UnsafeMutablePointer<vector_float3>, maxCount: Int, atTime time: TimeInterval) -> Int
  func __getDouble3Array(_ array: UnsafeMutablePointer<vector_double3>, maxCount: Int, atTime time: TimeInterval) -> Int
  func __reset(withFloat3Array valuesArray: UnsafePointer<vector_float3>, count valuesCount: Int, atTimes timesArray: UnsafePointer<TimeInterval>, count timesCount: Int)
  func __reset(withDouble3Array valuesArray: UnsafePointer<vector_double3>, count valuesCount: Int, atTimes timesArray: UnsafePointer<TimeInterval>, count timesCount: Int)
  func __getFloat3Array(_ valuesArray: UnsafeMutablePointer<vector_float3>, maxCount: Int) -> Int
  func __getDouble3Array(_ valuesArray: UnsafeMutablePointer<vector_double3>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedVector3Array {
  @nonobjc func set(float3Array array: [SIMD3<Float>], atTime time: TimeInterval)
  @nonobjc func set(double3Array array: [SIMD3<Double>], atTime time: TimeInterval)
  @nonobjc func float3Array(atTime time: TimeInterval) -> [SIMD3<Float>]
  @nonobjc func double3Array(atTime time: TimeInterval) -> [SIMD3<Double>]
  @nonobjc func reset(float3Array array: [SIMD3<Float>], atTimes times: [TimeInterval])
  @nonobjc func reset(double3Array array: [SIMD3<Double>], atTimes times: [TimeInterval])
  @nonobjc var float3Array: [SIMD3<Float>] { get }
  @nonobjc var double3Array: [SIMD3<Double>] { get }
}
@available(macOS 10.13, *)
class MDLAnimatedQuaternionArray : MDLAnimatedValue {
  var elementCount: Int { get }
  init(elementCount arrayElementCount: Int)
  func __setFloat(_ array: UnsafePointer<simd_quatf>, count: Int, atTime time: TimeInterval)
  func __setDouble(_ array: UnsafePointer<simd_quatd>, count: Int, atTime time: TimeInterval)
  func __getFloat(_ array: UnsafeMutablePointer<simd_quatf>, maxCount: Int, atTime time: TimeInterval) -> Int
  func __getDouble(_ array: UnsafeMutablePointer<simd_quatd>, maxCount: Int, atTime time: TimeInterval) -> Int
  func __reset(withFloat valuesArray: UnsafePointer<simd_quatf>, count valuesCount: Int, atTimes timesArray: UnsafePointer<TimeInterval>, count timesCount: Int)
  func __reset(withDouble valuesArray: UnsafePointer<simd_quatd>, count valuesCount: Int, atTimes timesArray: UnsafePointer<TimeInterval>, count timesCount: Int)
  func __getFloat(_ valuesArray: UnsafeMutablePointer<simd_quatf>, maxCount: Int) -> Int
  func __getDouble(_ valuesArray: UnsafeMutablePointer<simd_quatd>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedQuaternionArray {
  @nonobjc func set(floatQuaternionArray array: [simd_quatf], atTime time: TimeInterval)
  @nonobjc func set(doubleQuaternionArray array: [simd_quatd], atTime time: TimeInterval)
  @nonobjc func floatQuaternionArray(atTime time: TimeInterval) -> [simd_quatf]
  @nonobjc func doubleQuaternionArray(atTime time: TimeInterval) -> [simd_quatd]
  @nonobjc func reset(floatQuaternionArray array: [simd_quatf], atTimes times: [TimeInterval])
  @nonobjc func reset(doubleQuaternionArray array: [simd_quatd], atTimes times: [TimeInterval])
  @nonobjc var floatQuaternionArray: [simd_quatf] { get }
  @nonobjc var doubleQuaternionArray: [simd_quatd] { get }
}
@available(macOS 10.13, *)
class MDLAnimatedScalar : MDLAnimatedValue {
  func setFloat(_ value: Float, atTime time: TimeInterval)
  func setDouble(_ value: Double, atTime time: TimeInterval)
  func floatValue(atTime time: TimeInterval) -> Float
  func doubleValue(atTime time: TimeInterval) -> Double
  func __reset(withFloatArray valuesArray: UnsafePointer<Float>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __reset(withDoubleArray valuesArray: UnsafePointer<Double>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __getFloatArray(_ valuesArray: UnsafeMutablePointer<Float>, maxCount: Int) -> Int
  func __getDoubleArray(_ valuesArray: UnsafeMutablePointer<Double>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedScalar {
  @nonobjc func reset(floatArray array: [Float], atTimes times: [TimeInterval])
  @nonobjc func reset(doubleArray array: [Double], atTimes times: [TimeInterval])
  @nonobjc var floatArray: [Float] { get }
  @nonobjc var doubleArray: [Double] { get }
}
@available(macOS 10.13, *)
class MDLAnimatedVector2 : MDLAnimatedValue {
  func setFloat2(_ value: vector_float2, atTime time: TimeInterval)
  func setDouble2(_ value: vector_double2, atTime time: TimeInterval)
  func float2Value(atTime time: TimeInterval) -> vector_float2
  func double2Value(atTime time: TimeInterval) -> vector_double2
  func __reset(withFloat2Array valuesArray: UnsafePointer<vector_float2>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __reset(withDouble2Array valuesArray: UnsafePointer<vector_double2>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __getFloat2Array(_ valuesArray: UnsafeMutablePointer<vector_float2>, maxCount: Int) -> Int
  func __getDouble2Array(_ valuesArray: UnsafeMutablePointer<vector_double2>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedVector2 {
  @nonobjc func reset(float2Array array: [SIMD2<Float>], atTimes times: [TimeInterval])
  @nonobjc func reset(double2Array array: [SIMD2<Double>], atTimes times: [TimeInterval])
  @nonobjc var float2Array: [SIMD2<Float>] { get }
  @nonobjc var double2Array: [SIMD2<Double>] { get }
}
@available(macOS 10.13, *)
class MDLAnimatedVector3 : MDLAnimatedValue {
  func setFloat3(_ value: vector_float3, atTime time: TimeInterval)
  func setDouble3(_ value: vector_double3, atTime time: TimeInterval)
  func float3Value(atTime time: TimeInterval) -> vector_float3
  func double3Value(atTime time: TimeInterval) -> vector_double3
  func __reset(withFloat3Array valuesArray: UnsafePointer<vector_float3>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __reset(withDouble3Array valuesArray: UnsafePointer<vector_double3>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __getFloat3Array(_ valuesArray: UnsafeMutablePointer<vector_float3>, maxCount: Int) -> Int
  func __getDouble3Array(_ valuesArray: UnsafeMutablePointer<vector_double3>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedVector3 {
  @nonobjc func reset(float3Array array: [SIMD3<Float>], atTimes times: [TimeInterval])
  @nonobjc func reset(double3Array array: [SIMD3<Double>], atTimes times: [TimeInterval])
  @nonobjc var float3Array: [SIMD3<Float>] { get }
  @nonobjc var double3Array: [SIMD3<Double>] { get }
}
@available(macOS 10.13, *)
class MDLAnimatedVector4 : MDLAnimatedValue {
  func setFloat4(_ value: vector_float4, atTime time: TimeInterval)
  func setDouble4(_ value: vector_double4, atTime time: TimeInterval)
  func float4Value(atTime time: TimeInterval) -> vector_float4
  func double4Value(atTime time: TimeInterval) -> vector_double4
  func __reset(withFloat4Array valuesArray: UnsafePointer<vector_float4>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __reset(withDouble4Array valuesArray: UnsafePointer<vector_double4>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __getFloat4Array(_ valuesArray: UnsafeMutablePointer<vector_float4>, maxCount: Int) -> Int
  func __getDouble4Array(_ valuesArray: UnsafeMutablePointer<vector_double4>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedVector4 {
  @nonobjc func reset(float4Array array: [SIMD4<Float>], atTimes times: [TimeInterval])
  @nonobjc func reset(double4Array array: [SIMD4<Double>], atTimes times: [TimeInterval])
  @nonobjc var float4Array: [SIMD4<Float>] { get }
  @nonobjc var double4Array: [SIMD4<Double>] { get }
}
@available(macOS 10.14, *)
class MDLAnimatedQuaternion : MDLAnimatedValue {
  func setFloatQuaternion(_ value: simd_quatf, atTime time: TimeInterval)
  func setDoubleQuaternion(_ value: simd_quatd, atTime time: TimeInterval)
  func floatQuaternionValue(atTime time: TimeInterval) -> simd_quatf
  func doubleQuaternionValue(atTime time: TimeInterval) -> simd_quatd
  func __reset(withFloatArray valuesArray: UnsafePointer<simd_quatf>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __reset(withDoubleArray valuesArray: UnsafePointer<simd_quatd>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __getFloatArray(_ valuesArray: UnsafeMutablePointer<simd_quatf>, maxCount: Int) -> Int
  func __getDoubleArray(_ valuesArray: UnsafeMutablePointer<simd_quatd>, maxCount: Int) -> Int
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension MDLAnimatedQuaternion {
  @nonobjc func reset(floatQuaternionArray array: [simd_quatf], atTimes times: [TimeInterval])
  @nonobjc func reset(doubleQuaternionArray array: [simd_quatd], atTimes times: [TimeInterval])
  @nonobjc var floatQuaternionArray: [simd_quatf] { get }
  @nonobjc var doubleQuaternionArray: [simd_quatd] { get }
}
@available(macOS 10.13, *)
class MDLAnimatedMatrix4x4 : MDLAnimatedValue {
  func setFloat4x4(_ value: matrix_float4x4, atTime time: TimeInterval)
  func setDouble4x4(_ value: matrix_double4x4, atTime time: TimeInterval)
  func float4x4Value(atTime time: TimeInterval) -> matrix_float4x4
  func double4x4Value(atTime time: TimeInterval) -> matrix_double4x4
  func __reset(withFloat4x4Array valuesArray: UnsafePointer<matrix_float4x4>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __reset(withDouble4x4Array valuesArray: UnsafePointer<matrix_double4x4>, atTimes timesArray: UnsafePointer<TimeInterval>, count: Int)
  func __getFloat4x4Array(_ valuesArray: UnsafeMutablePointer<matrix_float4x4>, maxCount: Int) -> Int
  func __getDouble4x4Array(_ valuesArray: UnsafeMutablePointer<matrix_double4x4>, maxCount: Int) -> Int
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedMatrix4x4 {
  @nonobjc func reset(float4x4Array array: [float4x4], atTimes times: [TimeInterval])
  @nonobjc func reset(double4Array array: [double4x4], atTimes times: [TimeInterval])
  @nonobjc var float4x4Array: [float4x4] { get }
  @nonobjc var double4x4Array: [double4x4] { get }
}
