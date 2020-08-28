
@available(iOS 13.0, *)
enum INSearchForMediaMediaItemUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case loginRequired
  case subscriptionRequired
  case unsupportedMediaType
  case explicitContentSettings
  case cellularDataSettings
  case restrictedContent
  @available(iOS 14.0, *)
  case serviceUnavailable
  @available(iOS 14.0, *)
  case regionRestriction
}
@available(iOS 13.0, *)
class INSearchForMediaMediaItemResolutionResult : INMediaItemResolutionResult {
  class func unsupported(forReason reason: INSearchForMediaMediaItemUnsupportedReason) -> Self
  init(mediaItemResolutionResult: INMediaItemResolutionResult)
}
