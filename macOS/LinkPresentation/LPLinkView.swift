
@available(macOS 10.15, *)
class LPLinkView : NSView {
  init(url URL: URL)
  init(metadata: LPLinkMetadata)
  @NSCopying var metadata: LPLinkMetadata
}
