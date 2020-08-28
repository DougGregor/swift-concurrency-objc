
typealias MPMediaEntityPersistentID = UInt64
@available(watchOS 2.0, *)
class MPMediaEntity : NSObject, NSSecureCoding {
  class func canFilter(byProperty property: String) -> Bool
  @available(watchOS 2.0, *)
  func enumerateValues(forProperties properties: Set<String>, using block: @escaping (String, Any, UnsafeMutablePointer<ObjCBool>) -> Void)
  subscript(key: Any) -> Any? { get }
  func value(forProperty property: String) -> Any?
  @available(watchOS 2.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
}
@available(watchOS 2.0, *)
let MPMediaEntityPropertyPersistentID: String
