
@available(watchOS 5.0, *)
enum MLComputeUnits : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cpuOnly
  case cpuAndGPU
  case all
}
@available(watchOS 5.0, *)
class MLModelConfiguration : NSObject, NSCopying, NSSecureCoding {
  var computeUnits: MLComputeUnits
}
@available(watchOS 6.0, *)
extension MLModelConfiguration {
  var allowLowPrecisionAccumulationOnGPU: Bool
}
@available(watchOS 6.0, *)
extension MLModelConfiguration {
  var parameters: [MLParameterKey : Any]?
}
