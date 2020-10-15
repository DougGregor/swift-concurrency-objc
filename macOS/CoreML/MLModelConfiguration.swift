
@available(macOS 10.14, *)
enum MLComputeUnits : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cpuOnly
  case cpuAndGPU
  case all
}
@available(macOS 10.14, *)
class MLModelConfiguration : NSObject, NSCopying, NSSecureCoding {
  var computeUnits: MLComputeUnits
}
@available(macOS 10.15, *)
extension MLModelConfiguration {
  var allowLowPrecisionAccumulationOnGPU: Bool
  var preferredMetalDevice: MTLDevice?
}
@available(macOS 10.15, *)
extension MLModelConfiguration {
  var parameters: [MLParameterKey : Any]?
}
