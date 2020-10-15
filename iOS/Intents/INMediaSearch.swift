
@available(iOS 13.0, *)
class INMediaSearch : NSObject, NSCopying, NSSecureCoding {
  init(__mediaType mediaType: INMediaItemType, sortOrder: INMediaSortOrder, mediaName: String?, artistName: String?, albumName: String?, genreNames: [String]?, moodNames: [String]?, releaseDate: INDateComponentsRange?, reference: INMediaReference, mediaIdentifier: String?)
  var mediaType: INMediaItemType { get }
  var sortOrder: INMediaSortOrder { get }
  var mediaName: String? { get }
  var artistName: String? { get }
  var albumName: String? { get }
  var genreNames: [String]? { get }
  var moodNames: [String]? { get }
  @NSCopying var releaseDate: INDateComponentsRange? { get }
  var reference: INMediaReference { get }
  var mediaIdentifier: String? { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaSearch {
  @nonobjc convenience init(mediaType: INMediaItemType = .unknown, sortOrder: INMediaSortOrder = .unknown, mediaName: String? = nil, artistName: String? = nil, albumName: String? = nil, genreNames: [String]? = nil, moodNames: [String]? = nil, releaseDate: INDateComponentsRange? = nil, reference: INMediaReference = .unknown, mediaIdentifier: String? = nil)
}
