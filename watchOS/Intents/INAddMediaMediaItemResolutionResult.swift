
@available(watchOS 6.0, *)
enum INAddMediaMediaItemUnsupportedReason : Int {
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
class INAddMediaMediaItemResolutionResult : INMediaItemResolutionResult {
  class func unsupported(forReason reason: INAddMediaMediaItemUnsupportedReason) -> Self
  init(mediaItemResolutionResult: INMediaItemResolutionResult)
}
