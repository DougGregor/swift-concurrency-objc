
@available(tvOS 11.0, *)
class INTaskList : NSObject, NSCopying, NSSecureCoding {
  init(title: INSpeakableString, tasks: [INTask], groupName: INSpeakableString?, createdDateComponents: DateComponents?, modifiedDateComponents: DateComponents?, identifier: String?)
  @NSCopying var title: INSpeakableString { get }
  var tasks: [INTask] { get }
  @NSCopying var groupName: INSpeakableString? { get }
  var createdDateComponents: DateComponents? { get }
  var modifiedDateComponents: DateComponents? { get }
  var identifier: String? { get }
}
