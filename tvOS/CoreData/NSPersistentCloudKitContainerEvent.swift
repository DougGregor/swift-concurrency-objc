
extension NSPersistentCloudKitContainer {
  @available(tvOS 14.0, *)
  enum EventType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case setup
    case `import`
    case export
  }
  @available(tvOS 14.0, *)
  class let eventChangedNotification: NSNotification.Name
  @available(tvOS 14.0, *)
  class let eventNotificationUserInfoKey: String
  @available(tvOS 14.0, *)
  class Event : NSObject, NSCopying {
    var identifier: UUID { get }
    var storeIdentifier: String { get }
    var type: NSPersistentCloudKitContainer.EventType { get }
    var startDate: Date { get }
    var endDate: Date? { get }
    var succeeded: Bool { get }
    var error: Error? { get }
  }
}
