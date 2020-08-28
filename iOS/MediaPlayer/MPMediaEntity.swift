
typealias MPMediaEntityPersistentID = UInt64
@available(iOS 4.2, *)
class MPMediaEntity : NSObject, NSSecureCoding {
  class func canFilter(byProperty property: String) -> Bool
  @available(iOS 4.0, *)
  func enumerateValues(forProperties properties: Set<String>, using block: @escaping (String, Any, UnsafeMutablePointer<ObjCBool>) -> Void)
  subscript(key: Any) -> Any? { get }
  func value(forProperty property: String) -> Any?
  @available(iOS 7.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
}
@available(iOS 4.2, *)
let MPMediaEntityPropertyPersistentID: String
