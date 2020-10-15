
@available(watchOS 6.0, *)
enum INAddMediaMediaDestinationUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case playlistNameNotFound
  @available(watchOS 7.0, *)
  case playlistNotEditable
}
@available(watchOS 6.0, *)
class INAddMediaMediaDestinationResolutionResult : INMediaDestinationResolutionResult {
  class func unsupported(forReason reason: INAddMediaMediaDestinationUnsupportedReason) -> Self
  init(mediaDestinationResolutionResult: INMediaDestinationResolutionResult)
}
