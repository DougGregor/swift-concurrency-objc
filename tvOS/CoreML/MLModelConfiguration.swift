
@available(tvOS 12.0, *)
enum MLComputeUnits : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cpuOnly
  case cpuAndGPU
  case all
}
@available(tvOS 12.0, *)
class MLModelConfiguration : NSObject, NSCopying, NSSecureCoding {
  var computeUnits: MLComputeUnits
}
@available(tvOS 13.0, *)
extension MLModelConfiguration {
  var allowLowPrecisionAccumulationOnGPU: Bool
  var preferredMetalDevice: MTLDevice?
}
@available(tvOS 13.0, *)
extension MLModelConfiguration {
  var parameters: [MLParameterKey : Any]?
}
