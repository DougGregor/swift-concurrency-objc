
class ABRecord : NSObject {
  @available(macOS 10.5, *)
  init!(addressBook: ABAddressBook!)
  func value(forProperty property: String!) -> Any!
  @available(macOS 10.7, *)
  func setValue(_ value: Any!, forProperty property: String!, error: ()) throws
  func setValue(_ value: Any!, forProperty property: String!) -> Bool
  func removeValue(forProperty property: String!) -> Bool
  @available(macOS 10.4, *)
  func isReadOnly() -> Bool
}
extension ABRecord {
  var uniqueId: String! { get }
  @available(macOS 10.10, *)
  var displayName: String! { get }
}
