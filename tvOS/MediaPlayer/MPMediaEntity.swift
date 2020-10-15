
typealias MPMediaEntityPersistentID = UInt64
@available(tvOS 14.0, *)
class MPMediaEntity : NSObject, NSSecureCoding {
  class func canFilter(byProperty property: String) -> Bool
  subscript(key: Any) -> Any? { get }
  func value(forProperty property: String) -> Any?
  @available(tvOS 14.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
}
@available(tvOS 9.0, *)
let MPMediaEntityPropertyPersistentID: String
