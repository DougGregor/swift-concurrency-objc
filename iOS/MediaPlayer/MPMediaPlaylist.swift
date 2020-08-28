
@available(iOS 3.0, *)
struct MPMediaPlaylistAttribute : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var onTheGo: MPMediaPlaylistAttribute { get }
  static var smart: MPMediaPlaylistAttribute { get }
  static var genius: MPMediaPlaylistAttribute { get }
}
@available(iOS 3.0, *)
class MPMediaPlaylist : MPMediaItemCollection {
  @available(iOS 14.0, *)
  var cloudGlobalID: String? { get }
  @available(iOS 7.0, *)
  var name: String? { get }
  @available(iOS 7.0, *)
  var playlistAttributes: MPMediaPlaylistAttribute { get }
  @available(iOS 8.0, *)
  var seedItems: [MPMediaItem]? { get }
  @available(iOS 9.3, *)
  var descriptionText: String? { get }
  @available(iOS 9.3, *)
  var authorDisplayName: String? { get }
  @available(iOS 9.3, *)
  func addItem(withProductID productID: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 9.3, *)
  func add(_ mediaItems: [MPMediaItem], completionHandler: ((Error?) -> Void)? = nil)
}
let MPMediaPlaylistPropertyPersistentID: String
@available(iOS 9.0, *)
let MPMediaPlaylistPropertyCloudGlobalID: String
let MPMediaPlaylistPropertyName: String
let MPMediaPlaylistPropertyPlaylistAttributes: String
let MPMediaPlaylistPropertySeedItems: String
@available(iOS 9.3, *)
let MPMediaPlaylistPropertyDescriptionText: String
@available(iOS 9.3, *)
let MPMediaPlaylistPropertyAuthorDisplayName: String
@available(iOS 9.3, *)
class MPMediaPlaylistCreationMetadata : NSObject {
  init(name: String)
  var name: String { get }
  var authorDisplayName: String!
  var descriptionText: String
}
