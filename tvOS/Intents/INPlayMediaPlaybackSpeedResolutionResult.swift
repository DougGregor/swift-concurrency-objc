
@available(tvOS 14.0, *)
enum INPlayMediaPlaybackSpeedUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case belowMinimum
  case aboveMaximum
}
@available(tvOS 14.0, *)
class INPlayMediaPlaybackSpeedResolutionResult : INDoubleResolutionResult {
  class func unsupported(forReason reason: INPlayMediaPlaybackSpeedUnsupportedReason) -> Self
  init(doubleResolutionResult: INDoubleResolutionResult)
}
