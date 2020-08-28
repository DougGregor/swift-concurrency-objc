
@available(tvOS 14.0, *)
enum INAddMediaMediaDestinationUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case playlistNameNotFound
  @available(tvOS 14.0, *)
  case playlistNotEditable
}
@available(tvOS 14.0, *)
class INAddMediaMediaDestinationResolutionResult : INMediaDestinationResolutionResult {
  class func unsupported(forReason reason: INAddMediaMediaDestinationUnsupportedReason) -> Self
  init(mediaDestinationResolutionResult: INMediaDestinationResolutionResult)
}
