
@available(tvOS 7.1, *)
class MPContentItem : NSObject {
  init(identifier: String)
  var identifier: String { get }
  var title: String?
  var subtitle: String?
  var artwork: MPMediaItemArtwork?
  var playbackProgress: Float
  @available(tvOS 10.0, *)
  var isStreamingContent: Bool
  @available(tvOS 10.0, *)
  var isExplicitContent: Bool
  var isContainer: Bool
  var isPlayable: Bool
}
