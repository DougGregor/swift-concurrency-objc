
@available(macOS 10.12, *)
class GKNoiseMap : NSObject {
  var size: vector_double2 { get }
  var origin: vector_double2 { get }
  var sampleCount: vector_int2 { get }
  var isSeamless: Bool { get }
  convenience init(_ noise: GKNoise)
  init(_ noise: GKNoise, size: vector_double2, origin: vector_double2, sampleCount: vector_int2, seamless: Bool)
  func value(at position: vector_int2) -> Float
  func interpolatedValue(at position: vector_float2) -> Float
  func setValue(_ value: Float, at position: vector_int2)
}
