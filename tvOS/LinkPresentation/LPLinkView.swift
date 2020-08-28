
@available(tvOS 13.0, *)
class LPLinkView : UIView {
  init(url URL: URL)
  init(metadata: LPLinkMetadata)
  @NSCopying var metadata: LPLinkMetadata
}
