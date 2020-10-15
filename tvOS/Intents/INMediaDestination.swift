
@available(tvOS 14.0, *)
class INMediaDestinationReference : NSObject, NSCopying, NSSecureCoding {
  class func library() -> Self
  class func playlistDestination(withName playlistName: String) -> Self
  var mediaDestinationType: INMediaDestinationType { get }
  var playlistName: String? { get }
}
