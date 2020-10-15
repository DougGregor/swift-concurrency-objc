
@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLMatrix4x4Array {
  @nonobjc var float4x4Array: [float4x4]
  @nonobjc var double4x4Array: [double4x4]
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedValue {
  @nonobjc var times: [TimeInterval] { get }
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

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedScalar {
  @nonobjc func reset(floatArray array: [Float], atTimes times: [TimeInterval])
  @nonobjc func reset(doubleArray array: [Double], atTimes times: [TimeInterval])
  @nonobjc var floatArray: [Float] { get }
  @nonobjc var doubleArray: [Double] { get }
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedVector2 {
  @nonobjc func reset(float2Array array: [SIMD2<Float>], atTimes times: [TimeInterval])
  @nonobjc func reset(double2Array array: [SIMD2<Double>], atTimes times: [TimeInterval])
  @nonobjc var float2Array: [SIMD2<Float>] { get }
  @nonobjc var double2Array: [SIMD2<Double>] { get }
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedVector3 {
  @nonobjc func reset(float3Array array: [SIMD3<Float>], atTimes times: [TimeInterval])
  @nonobjc func reset(double3Array array: [SIMD3<Double>], atTimes times: [TimeInterval])
  @nonobjc var float3Array: [SIMD3<Float>] { get }
  @nonobjc var double3Array: [SIMD3<Double>] { get }
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedVector4 {
  @nonobjc func reset(float4Array array: [SIMD4<Float>], atTimes times: [TimeInterval])
  @nonobjc func reset(double4Array array: [SIMD4<Double>], atTimes times: [TimeInterval])
  @nonobjc var float4Array: [SIMD4<Float>] { get }
  @nonobjc var double4Array: [SIMD4<Double>] { get }
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MDLAnimatedMatrix4x4 {
  @nonobjc func reset(float4x4Array array: [float4x4], atTimes times: [TimeInterval])
  @nonobjc func reset(double4Array array: [double4x4], atTimes times: [TimeInterval])
  @nonobjc var float4x4Array: [float4x4] { get }
  @nonobjc var double4x4Array: [double4x4] { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension MDLAnimatedQuaternion {
  @nonobjc func reset(floatQuaternionArray array: [simd_quatf], atTimes times: [TimeInterval])
  @nonobjc func reset(doubleQuaternionArray array: [simd_quatd], atTimes times: [TimeInterval])
  @nonobjc var floatQuaternionArray: [simd_quatf] { get }
  @nonobjc var doubleQuaternionArray: [simd_quatd] { get }
}

