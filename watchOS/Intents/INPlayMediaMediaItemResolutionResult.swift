
@available(watchOS 6.0, *)
enum INPlayMediaMediaItemUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case loginRequired
  case subscriptionRequired
  case unsupportedMediaType
  case explicitContentSettings
  case cellularDataSettings
  case restrictedContent
  @available(watchOS 7.0, *)
  case serviceUnavailable
  @available(watchOS 7.0, *)
  case regionRestriction
}
@available(watchOS 6.0, *)
class INPlayMediaMediaItemResolutionResult : INMediaItemResolutionResult {
  class func unsupported(forReason reason: INPlayMediaMediaItemUnsupportedReason) -> Self
  init(mediaItemResolutionResult: INMediaItemResolutionResult)
}
