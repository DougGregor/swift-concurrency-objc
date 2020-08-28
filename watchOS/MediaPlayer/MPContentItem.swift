
@available(watchOS 2.0, *)
class MPContentItem : NSObject {
  init(identifier: String)
  var identifier: String { get }
  var title: String?
  var subtitle: String?
  var artwork: MPMediaItemArtwork?
  var playbackProgress: Float
  @available(watchOS 3.0, *)
  var isStreamingContent: Bool
  @available(watchOS 3.0, *)
  var isExplicitContent: Bool
  var isContainer: Bool
  var isPlayable: Bool
}
