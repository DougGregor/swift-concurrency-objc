
class ITLibMediaEntity : NSObject {
  var persistentID: NSNumber { get }
  func value(forProperty property: String) -> Any?
  func enumerateValues(forProperties properties: Set<String>?, using block: @escaping (String, Any, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateValuesExcept(forProperties properties: Set<String>?, using block: @escaping (String, Any, UnsafeMutablePointer<ObjCBool>) -> Void)
}
let ITLibMediaEntityPropertyPersistentID: String
