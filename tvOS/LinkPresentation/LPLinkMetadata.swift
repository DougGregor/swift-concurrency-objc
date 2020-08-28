
@available(tvOS 13.0, *)
class LPLinkMetadata : NSObject, NSCopying, NSSecureCoding {
  var originalURL: URL?
  var url: URL?
  var title: String?
  var iconProvider: NSItemProvider?
  var imageProvider: NSItemProvider?
  var videoProvider: NSItemProvider?
  var remoteVideoURL: URL?
}
