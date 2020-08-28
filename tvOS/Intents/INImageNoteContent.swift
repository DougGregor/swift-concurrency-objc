
@available(tvOS 11.0, *)
class INImageNoteContent : INNoteContent, NSSecureCoding, NSCopying {
  init(image: INImage)
  @NSCopying var image: INImage? { get }
}
