
@available(watchOS 6.0, *)
enum INStartCallCallCapabilityUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case videoCallUnsupported
  case microphoneNotAccessible
  case cameraNotAccessible
}
@available(watchOS 6.0, *)
class INStartCallCallCapabilityResolutionResult : INCallCapabilityResolutionResult {
  class func unsupported(forReason reason: INStartCallCallCapabilityUnsupportedReason) -> Self
  init(callCapabilityResolutionResult: INCallCapabilityResolutionResult)
}
