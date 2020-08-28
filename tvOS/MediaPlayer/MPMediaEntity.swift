
typealias MPMediaEntityPersistentID = UInt64
@available(tvOS 14.0, *)
class MPMediaEntity : NSObject, NSSecureCoding {
  class func canFilter(byProperty property: String) -> Bool
  @available(tvOS 4.0, *)
  func enumerateValues(forProperties properties: Set<String>, using block: @escaping (String, Any, UnsafeMutablePointer<ObjCBool>) -> Void)
  subscript(key: Any) -> Any? { get }
  func value(forProperty property: String) -> Any?
  @available(tvOS 14.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
}
@available(tvOS 9.0, *)
let MPMediaEntityPropertyPersistentID: String
