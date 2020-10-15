
@available(watchOS 4.0, *)
class INImageNoteContent : INNoteContent, NSSecureCoding, NSCopying {
  init(image: INImage)
  @NSCopying var image: INImage? { get }
}
