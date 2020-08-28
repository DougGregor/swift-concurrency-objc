
@available(tvOS 11.0, *)
class INTextNoteContent : INNoteContent, NSSecureCoding, NSCopying {
  init(text: String)
  var text: String? { get }
}
