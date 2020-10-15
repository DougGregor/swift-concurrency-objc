
@available(watchOS 2.0, *)
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contacts
}
@available(watchOS 2.0, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(watchOS 2.0, *)
class CNContactStore : NSObject {
  class func authorizationStatus(for entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccess(for entityType: CNEntityType, completionHandler: @escaping (Bool, Error?) -> Void)
  func unifiedContacts(matching predicate: NSPredicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContact(withIdentifier identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContacts(with fetchRequest: CNContactFetchRequest, usingBlock block: @escaping (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groups(matching predicate: NSPredicate?) throws -> [CNGroup]
  func containers(matching predicate: NSPredicate?) throws -> [CNContainer]
  @available(watchOS 6.0, *)
  var currentHistoryToken: Data? { get }
  func defaultContainerIdentifier() -> String
}
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let CNContactStoreDidChange: NSNotification.Name
}
