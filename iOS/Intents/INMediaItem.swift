
@available(iOS 12.0, *)
class INMediaItem : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 13.0, *)
  init(identifier: String?, title: String?, type: INMediaItemType, artwork: INImage?, artist: String?)
  convenience init(identifier: String?, title: String?, type: INMediaItemType, artwork: INImage?)
  var identifier: String? { get }
  var title: String? { get }
  var type: INMediaItemType { get }
  @NSCopying var artwork: INImage? { get }
  @available(iOS 13.0, *)
  var artist: String? { get }
}
