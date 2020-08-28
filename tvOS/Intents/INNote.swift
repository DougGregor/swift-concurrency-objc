
@available(tvOS 11.0, *)
class INNote : NSObject, NSCopying, NSSecureCoding {
  init(title: INSpeakableString, contents: [INNoteContent], groupName: INSpeakableString?, createdDateComponents: DateComponents?, modifiedDateComponents: DateComponents?, identifier: String?)
  @NSCopying var title: INSpeakableString { get }
  var contents: [INNoteContent] { get }
  @NSCopying var groupName: INSpeakableString? { get }
  var createdDateComponents: DateComponents? { get }
  var modifiedDateComponents: DateComponents? { get }
  var identifier: String? { get }
}
