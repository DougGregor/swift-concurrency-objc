
@available(watchOS 2.0, *)
struct MPMediaPlaylistAttribute : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var onTheGo: MPMediaPlaylistAttribute { get }
  static var smart: MPMediaPlaylistAttribute { get }
  static var genius: MPMediaPlaylistAttribute { get }
}
@available(watchOS 2.0, *)
class MPMediaPlaylist : MPMediaItemCollection {
  @available(watchOS 7.0, *)
  var cloudGlobalID: String? { get }
  @available(watchOS 2.0, *)
  var name: String? { get }
  @available(watchOS 2.0, *)
  var playlistAttributes: MPMediaPlaylistAttribute { get }
  @available(watchOS 2.0, *)
  var seedItems: [MPMediaItem]? { get }
  @available(watchOS 2.3, *)
  var descriptionText: String? { get }
  @available(watchOS 2.3, *)
  var authorDisplayName: String? { get }
  @available(watchOS 2.3, *)
  func addItem(withProductID productID: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS 2.3, *)
  func addItem(withProductID productID: String) async throws
  @available(watchOS 2.3, *)
  func add(_ mediaItems: [MPMediaItem], completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS 2.3, *)
  func add(_ mediaItems: [MPMediaItem]) async throws
}
let MPMediaPlaylistPropertyPersistentID: String
@available(watchOS 2.0, *)
let MPMediaPlaylistPropertyCloudGlobalID: String
let MPMediaPlaylistPropertyName: String
let MPMediaPlaylistPropertyPlaylistAttributes: String
let MPMediaPlaylistPropertySeedItems: String
@available(watchOS 2.3, *)
let MPMediaPlaylistPropertyDescriptionText: String
@available(watchOS 2.3, *)
let MPMediaPlaylistPropertyAuthorDisplayName: String
@available(watchOS 2.3, *)
class MPMediaPlaylistCreationMetadata : NSObject {
  init(name: String)
  var name: String { get }
  var authorDisplayName: String!
  var descriptionText: String
}
