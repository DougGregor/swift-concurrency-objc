
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "TVContentItem has been replaced by TVTopShelfItem")
class TVContentItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var contentIdentifier: TVContentIdentifier { get }
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use setImageURL:forTraits: to set image URLs into TVContentItem.")
  var imageURL: URL?
  @available(tvOS 11.0, *)
  func imageURL(forTraits traits: TVContentItemImageTrait) -> URL?
  @available(tvOS 11.0, *)
  func setImageURL(_ aURL: URL?, forTraits traits: TVContentItemImageTrait)
  var imageShape: TVContentItemImageShape
  var title: String?
  var lastAccessedDate: Date?
  var expirationDate: Date?
  var creationDate: Date?
  @NSCopying var badgeCount: NSNumber?
  @NSCopying var duration: NSNumber?
  @NSCopying var currentPosition: NSNumber?
  @NSCopying var hasPlayedToEnd: NSNumber?
  var playURL: URL?
  var displayURL: URL?
  var topShelfItems: [TVContentItem]?
  init(contentIdentifier ident: TVContentIdentifier)
}
@available(tvOS 11.0, *)
struct TVContentItemImageTrait : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var userInterfaceStyleLight: TVContentItemImageTrait { get }
  static var userInterfaceStyleDark: TVContentItemImageTrait { get }
  static var screenScale1x: TVContentItemImageTrait { get }
  static var screenScale2x: TVContentItemImageTrait { get }
}
enum TVContentItemImageShape : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case poster
  case square
  case SDTV
  case HDTV
  case wide
  case extraWide
}
