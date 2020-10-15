
@available(macOS 10.12.2, *)
class MPContentItem : NSObject {
  init(identifier: String)
  var identifier: String { get }
  var title: String?
  var subtitle: String?
  var artwork: MPMediaItemArtwork?
  var playbackProgress: Float
  @available(macOS 10.12.2, *)
  var isStreamingContent: Bool
  @available(macOS 10.12.2, *)
  var isExplicitContent: Bool
  var isContainer: Bool
  var isPlayable: Bool
}
