
class ITLibAlbum : NSObject {
  var title: String? { get }
  var sortTitle: String? { get }
  var isCompilation: Bool { get }
  @available(*, deprecated)
  var artist: ITLibArtist? { get }
  var discCount: Int { get }
  var discNumber: Int { get }
  var rating: Int { get }
  var isRatingComputed: Bool { get }
  var isGapless: Bool { get }
  var trackCount: Int { get }
  var albumArtist: String? { get }
  var sortAlbumArtist: String? { get }
  var persistentID: NSNumber { get }
}
